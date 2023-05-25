import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megaohm_app/data/entities/data/air.dart';

part 'get_data_response.freezed.dart';
part 'get_data_response.g.dart';

@freezed
class GetDataResponse with _$GetDataResponse {
  const factory GetDataResponse({required Air? air, required String? ts}) =
      _GetDataResponse;

  factory GetDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GetDataResponseFromJson(json);
}
