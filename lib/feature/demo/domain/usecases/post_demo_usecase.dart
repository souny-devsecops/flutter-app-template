import 'package:injectable/injectable.dart';
import 'package:template/core/resources/data_state.dart';
import 'package:template/core/usecases/usecase.dart';
import 'package:template/feature/demo/domain/entities/demo.dart';
import 'package:template/feature/demo/domain/entities/post.dart';
import 'package:template/feature/demo/domain/entities/user.dart';

import '../repositories/demo_repository.dart';

@injectable
class PostDemmoUseCase implements UaseCase<DataState<PostEntity>, dynamic> {
  final DemoRepository _demoRepository;
  PostDemmoUseCase(this._demoRepository);

  @override
  Future<DataState<PostEntity>> call({params}) {
    return _demoRepository.postDemo(params);
  }
  
}
