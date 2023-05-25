import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megaohm_app/data/entities/get_data/get_data_request.dart';
import 'package:megaohm_app/data/entities/get_data/get_data_response.dart';
import 'package:megaohm_app/domain/usecases/login/get_data_usecase.dart';

part 'get_data_event.dart';
part 'get_data_state.dart';
part 'get_data_bloc.freezed.dart';

class GetDataBloc extends Bloc<GetDataEvent, GetDataState> {
  GetdataUseCase? useCase;
  GetDataBloc({this.useCase}) : super(const GetDataState.initial()) {
    on<GetData>((event, emit) async {
      emit.call(const GetDataState.loading());
      final result = await useCase!(event.request);

      result.fold((failure) {
        emit(const GetDataState.error("Ошибка получения данных"));
      }, (result) {
        emit(GetDataState.getData(result));
      });
    });
  }
}
