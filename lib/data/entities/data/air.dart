// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:megaohm_app/data/entities/data/sensor.dart';

part 'air.freezed.dart';
part 'air.g.dart';

@freezed
class Air with _$Air {
  const factory Air({required List<Sensor>? sensors}) = _Air;
  factory Air.fromJson(Map<String, dynamic> json) => _$AirFromJson(json);
}
