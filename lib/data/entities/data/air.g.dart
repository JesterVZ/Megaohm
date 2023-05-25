// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Air _$$_AirFromJson(Map<String, dynamic> json) => _$_Air(
      sensors: (json['sensors'] as List<dynamic>?)
          ?.map((e) => Sensor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AirToJson(_$_Air instance) => <String, dynamic>{
      'sensors': instance.sensors,
    };
