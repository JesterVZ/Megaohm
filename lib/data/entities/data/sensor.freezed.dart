// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sensor _$SensorFromJson(Map<String, dynamic> json) {
  return _Sensor.fromJson(json);
}

/// @nodoc
mixin _$Sensor {
  double? get h => throw _privateConstructorUsedError;
  String? get sid => throw _privateConstructorUsedError;
  double? get t => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SensorCopyWith<Sensor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorCopyWith<$Res> {
  factory $SensorCopyWith(Sensor value, $Res Function(Sensor) then) =
      _$SensorCopyWithImpl<$Res, Sensor>;
  @useResult
  $Res call({double? h, String? sid, double? t});
}

/// @nodoc
class _$SensorCopyWithImpl<$Res, $Val extends Sensor>
    implements $SensorCopyWith<$Res> {
  _$SensorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? h = freezed,
    Object? sid = freezed,
    Object? t = freezed,
  }) {
    return _then(_value.copyWith(
      h: freezed == h
          ? _value.h
          : h // ignore: cast_nullable_to_non_nullable
              as double?,
      sid: freezed == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String?,
      t: freezed == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SensorCopyWith<$Res> implements $SensorCopyWith<$Res> {
  factory _$$_SensorCopyWith(_$_Sensor value, $Res Function(_$_Sensor) then) =
      __$$_SensorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? h, String? sid, double? t});
}

/// @nodoc
class __$$_SensorCopyWithImpl<$Res>
    extends _$SensorCopyWithImpl<$Res, _$_Sensor>
    implements _$$_SensorCopyWith<$Res> {
  __$$_SensorCopyWithImpl(_$_Sensor _value, $Res Function(_$_Sensor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? h = freezed,
    Object? sid = freezed,
    Object? t = freezed,
  }) {
    return _then(_$_Sensor(
      h: freezed == h
          ? _value.h
          : h // ignore: cast_nullable_to_non_nullable
              as double?,
      sid: freezed == sid
          ? _value.sid
          : sid // ignore: cast_nullable_to_non_nullable
              as String?,
      t: freezed == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sensor implements _Sensor {
  const _$_Sensor({required this.h, required this.sid, required this.t});

  factory _$_Sensor.fromJson(Map<String, dynamic> json) =>
      _$$_SensorFromJson(json);

  @override
  final double? h;
  @override
  final String? sid;
  @override
  final double? t;

  @override
  String toString() {
    return 'Sensor(h: $h, sid: $sid, t: $t)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sensor &&
            (identical(other.h, h) || other.h == h) &&
            (identical(other.sid, sid) || other.sid == sid) &&
            (identical(other.t, t) || other.t == t));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, h, sid, t);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SensorCopyWith<_$_Sensor> get copyWith =>
      __$$_SensorCopyWithImpl<_$_Sensor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SensorToJson(
      this,
    );
  }
}

abstract class _Sensor implements Sensor {
  const factory _Sensor(
      {required final double? h,
      required final String? sid,
      required final double? t}) = _$_Sensor;

  factory _Sensor.fromJson(Map<String, dynamic> json) = _$_Sensor.fromJson;

  @override
  double? get h;
  @override
  String? get sid;
  @override
  double? get t;
  @override
  @JsonKey(ignore: true)
  _$$_SensorCopyWith<_$_Sensor> get copyWith =>
      throw _privateConstructorUsedError;
}
