import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megaohm_app/base/enums/data/averaging_level.dart';

part 'get_data_request.freezed.dart';
part 'get_data_request.g.dart';

@freezed
class GetDataRequest with _$GetDataRequest {
  const factory GetDataRequest(
      {required DateTime start_date,
      required DateTime end_date,
      required Discrete discrete}) = _GetDataRequest;

  factory GetDataRequest.fromJson(Map<String, dynamic> json) =>
      _$GetDataRequestFromJson(json);
}
