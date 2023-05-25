// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetDataResponse _$$_GetDataResponseFromJson(Map<String, dynamic> json) =>
    _$_GetDataResponse(
      air: json['air'] == null
          ? null
          : Air.fromJson(json['air'] as Map<String, dynamic>),
      ts: json['ts'] as String?,
    );

Map<String, dynamic> _$$_GetDataResponseToJson(_$_GetDataResponse instance) =>
    <String, dynamic>{
      'air': instance.air,
      'ts': instance.ts,
    };
