// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RemoteData _$$_RemoteDataFromJson(Map<String, dynamic> json) =>
    _$_RemoteData(
      air: json['air'] == null
          ? null
          : Air.fromJson(json['air'] as Map<String, dynamic>),
      ts: json['ts'] as String?,
    );

Map<String, dynamic> _$$_RemoteDataToJson(_$_RemoteData instance) =>
    <String, dynamic>{
      'air': instance.air,
      'ts': instance.ts,
    };
