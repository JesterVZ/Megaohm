import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_data_event.dart';
part 'get_data_state.dart';
part 'get_data_bloc.freezed.dart';

class GetDataBloc extends Bloc<GetDataEvent, GetDataState> {
  GetDataBloc() : super(const GetDataState.initial()) {
    on<GetDataEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
