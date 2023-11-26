import 'package:injectable/injectable.dart';
import 'package:template/core/resources/data_state.dart';
import 'package:template/core/usecases/usecase.dart';
import 'package:template/feature/demo/domain/entities/user.dart';

import '../repositories/demo_repository.dart';

@injectable
class FetchUserUseCase implements UaseCase<DataState<DataEntity>, void> {
  final DemoRepository _demoRepository;
  FetchUserUseCase(this._demoRepository);
  @override
  Future<DataState<DataEntity>> call({void params}) {
    return _demoRepository.fetchUser();
  }
}




