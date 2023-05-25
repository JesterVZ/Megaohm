import 'package:get_it/get_it.dart';
import 'package:megaohm_app/base/http/http_client.dart';
import 'package:megaohm_app/data/datasource/get_data/get_data_remote_datasource.dart';
import 'package:megaohm_app/data/repositories/get_data_repository_impl.dart';
import 'package:megaohm_app/domain/repositories/get_data/get_data_repository.dart';
import 'package:megaohm_app/domain/usecases/login/get_data_usecase.dart';

final locator = GetIt.instance;
Future<void> startup() async {
  //locator.registerFactory(() => GetDataBloc(usecase: locator()));
  locator.registerLazySingleton(() => GetdataUseCase(locator()));
  locator.registerLazySingleton<GetDataRepository>(
      () => GetDataRepositoryImpl(dataSource: locator()));
  locator.registerLazySingleton<GetDataRemoteDataSource>(
      () => GetDataRemoteDataSourceImpl(httpClient: locator()));
  locator.registerLazySingleton<ApiClient>(() => ApiClient());
}
