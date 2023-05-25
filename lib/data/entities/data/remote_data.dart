import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megaohm_app/data/entities/data/air.dart';

part 'remote_data.freezed.dart';
part 'remote_data.g.dart';

@freezed
class RemoteData with _$RemoteData {
  const factory RemoteData({required Air? air, required String? ts}) =
      _RemoteData;
  factory RemoteData.fromJson(Map<String, dynamic> json) =>
      _$RemoteDataFromJson(json);
}
