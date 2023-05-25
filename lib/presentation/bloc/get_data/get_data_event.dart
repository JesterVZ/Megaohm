part of 'get_data_bloc.dart';

@freezed
class GetDataEvent with _$GetDataEvent {
  const factory GetDataEvent.getData({required GetDataRequest request}) =
      GetData;
}
