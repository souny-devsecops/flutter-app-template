import 'package:injectable/injectable.dart';
import 'package:template/core/resources/data_state.dart';
import 'package:template/core/usecases/usecase.dart';
import 'package:template/feature/demo/domain/entities/demo.dart';
import 'package:template/feature/demo/domain/entities/user.dart';

import '../repositories/demo_repository.dart';

@injectable
class FetchDemmoUseCase
    implements UaseCase<DataState<ApiResponseEntity>, void> {
  final DemoRepository _demoRepository;
  FetchDemmoUseCase(this._demoRepository);

  @override
  Future<DataState<ApiResponseEntity>> call({void params}) {
    return _demoRepository.fetchDemo();
  }
}
