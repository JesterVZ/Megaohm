import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_data_request.freezed.dart';
part 'get_data_request.g.dart';

@freezed
class GetDataRequest with _$GetDataRequest {
  const factory GetDataRequest(
      {required String start_date,
      required String end_date,
      required String discrete}) = _GetDataRequest;

  factory GetDataRequest.fromJson(Map<String, dynamic> json) =>
      _$GetDataRequestFromJson(json);
}
