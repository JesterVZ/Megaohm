// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetDataRequest _$$_GetDataRequestFromJson(Map<String, dynamic> json) =>
    _$_GetDataRequest(
      start_date: json['start_date'] as String,
      end_date: json['end_date'] as String,
      discrete: json['discrete'] as String,
    );

Map<String, dynamic> _$$_GetDataRequestToJson(_$_GetDataRequest instance) =>
    <String, dynamic>{
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'discrete': instance.discrete,
    };
