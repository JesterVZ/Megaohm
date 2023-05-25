// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetDataRequest _$$_GetDataRequestFromJson(Map<String, dynamic> json) =>
    _$_GetDataRequest(
      start_date: DateTime.parse(json['start_date'] as String),
      end_date: DateTime.parse(json['end_date'] as String),
      discrete: $enumDecode(_$DiscreteEnumMap, json['discrete']),
    );

Map<String, dynamic> _$$_GetDataRequestToJson(_$_GetDataRequest instance) =>
    <String, dynamic>{
      'start_date': instance.start_date.toIso8601String(),
      'end_date': instance.end_date.toIso8601String(),
      'discrete': _$DiscreteEnumMap[instance.discrete]!,
    };

const _$DiscreteEnumMap = {
  Discrete.hourly: 'hourly',
  Discrete.daily: 'daily',
  Discrete.monthly: 'monthly',
};
