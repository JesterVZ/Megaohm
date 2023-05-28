part of 'get_data_bloc.dart';

@freezed
class GetDataState with _$GetDataState {
  const factory GetDataState.initial() = _Initial;
  const factory GetDataState.loading() = _Loading;
  const factory GetDataState.getData(List<GetDataResponse> response) = _GetData;
  const factory GetDataState.error(Exception message) = _ErrorGetData;
}
