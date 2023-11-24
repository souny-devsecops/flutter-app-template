# Check if the project name is provided
# Arrow Path chmod +x create_feature.sh
if [ -z "$1" ]; then
  echo "Usage: $0 Please enter your feature < create_feature.sh your-feature-name >"
  exit 1
fi

# Validate if the featureName contains only lowercase letters
if [[ ! "$1" =~ ^[a-z]+$ ]]; then
  echo "Error: Feature name can only contain lowercase letters."
  exit 1
fi


# Capitalize the first letter of the feature name
featureName=$(echo "$1" | awk '{print toupper(substr($0, 1, 1)) tolower(substr($0, 2))}')


# Create directories
mkdir -p lib/feature/$1/domain
mkdir -p lib/feature/$1/data
mkdir -p lib/feature/$1/presentation
mkdir -p lib/feature/$1/application


# Create domain layer directories
mkdir -p lib/feature/$1/domain/entities
mkdir -p lib/feature/$1/domain/repositories
mkdir -p lib/feature/$1/domain/usecases

# Create data layer directories
mkdir -p lib/feature/$1/data/datasources
mkdir -p lib/feature/$1/data/repositories
mkdir -p lib/feature/$1/data/models
mkdir -p lib/feature/$1/data/datasources/local/DAO
mkdir -p lib/feature/$1/data/datasources/remote

# Create presentation layer directories
mkdir -p lib/feature/$1/presentation/pages
mkdir -p lib/feature/$1/presentation/widgets
cat >> lib/feature/$1/presentation/main.dart <<END
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../application/$1_notifier.dart';

class ${featureName}Page extends ConsumerWidget {
  const ${featureName}Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final $1State = ref.watch($1Notifier);
    final $1Action = ref.read($1Notifier.notifier);
    return Scaffold(
      body: Center(
        child: Text($1State.$1!),
      ),
    );
  }
}
END

# Create application layer directories
cat >> lib/feature/$1/application/$1_state.dart <<END
import 'package:freezed_annotation/freezed_annotation.dart';

part '$1_state.freezed.dart';

@freezed
class ${featureName}State with _\$${featureName}State {
  factory ${featureName}State({
  String? $1,
  }) = _${featureName}State;
  const ${featureName}State._();
  factory ${featureName}State.initial() => ${featureName}State(
        $1: "${featureName}",
      );
}
END


cat >> lib/feature/$1/application/$1_notifier.dart <<END

import 'package:riverpod/riverpod.dart';
import 'package:injectable/injectable.dart';
import '$1_state.dart';

final $1Notifier =
    StateNotifierProvider<${featureName}Notifier, ${featureName}State>((ref) {
  return ${featureName}Notifier();
});

@injectable
class ${featureName}Notifier extends StateNotifier<${featureName}State> {
${featureName}Notifier() : super(${featureName}State.initial());
}
END
 
# Create repository
cat >> lib/feature/$1/domain/repositories/$1_repository.dart <<END
abstract class ${featureName}Repository {

}
END

cat >> lib/feature/$1/data/repositories/$1_repository_impl.dart <<END

import 'package:injectable/injectable.dart';
import '../../domain/repositories/$1_repository.dart';

@LazySingleton(as: ${featureName}Repository)
class ${featureName}RepositoryImpl implements ${featureName}Repository {

}
END

# Create repository
cat >> lib/feature/$1/data/datasources/remote/$1_api_service.dart <<END
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/constants/api_path.dart';
import 'package:dio/dio.dart';
part '$1_api_service.g.dart';

@lazySingleton
@RestApi(baseUrl: ApiPath.baseUrl)
abstract class ${featureName}ApiService {
  @factoryMethod
  factory ${featureName}ApiService(Dio dio) = _${featureName}ApiService;

}
END


cat >> lib/feature/$1/data/datasources/local/DAO/$1_dao.dart <<END

END



#  generate DI
flutter pub run build_runner build

echo "Clean Architecture folder structure created successfully!"
