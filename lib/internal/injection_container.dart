import 'package:get_it/get_it.dart';
import 'package:megaohm_app/base/http/http_client.dart';
import 'package:megaohm_app/data/datasource/login/login_remote_datasource.dart';
import 'package:megaohm_app/data/repositories/login_repository_impl.dart';
import 'package:megaohm_app/domain/repositories/login/login_repository.dart';
import 'package:megaohm_app/domain/usecases/login/login_usecase.dart';
import 'package:megaohm_app/presentation/bloc/login/login_bloc.dart';

final locator = GetIt.instance;
Future<void> startup() async {
  locator.registerFactory(() => LoginBloc(usecase: locator()));
  locator.registerLazySingleton(() => LoginUsecase(locator()));
  locator.registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImpl(dataSource: locator()));
  locator.registerLazySingleton<LoginRemoteDataSource>(
      () => LoginRemoteDataSourceImpl(httpClient: locator()));
  locator.registerLazySingleton<ApiClient>(() => ApiClient());
}