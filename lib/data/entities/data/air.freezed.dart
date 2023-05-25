// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'air.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Air _$AirFromJson(Map<String, dynamic> json) {
  return _Air.fromJson(json);
}

/// @nodoc
mixin _$Air {
  List<Sensor>? get sensors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AirCopyWith<Air> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AirCopyWith<$Res> {
  factory $AirCopyWith(Air value, $Res Function(Air) then) =
      _$AirCopyWithImpl<$Res, Air>;
  @useResult
  $Res call({List<Sensor>? sensors});
}

/// @nodoc
class _$AirCopyWithImpl<$Res, $Val extends Air> implements $AirCopyWith<$Res> {
  _$AirCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensors = freezed,
  }) {
    return _then(_value.copyWith(
      sensors: freezed == sensors
          ? _value.sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as List<Sensor>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AirCopyWith<$Res> implements $AirCopyWith<$Res> {
  factory _$$_AirCopyWith(_$_Air value, $Res Function(_$_Air) then) =
      __$$_AirCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Sensor>? sensors});
}

/// @nodoc
class __$$_AirCopyWithImpl<$Res> extends _$AirCopyWithImpl<$Res, _$_Air>
    implements _$$_AirCopyWith<$Res> {
  __$$_AirCopyWithImpl(_$_Air _value, $Res Function(_$_Air) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensors = freezed,
  }) {
    return _then(_$_Air(
      sensors: freezed == sensors
          ? _value._sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as List<Sensor>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Air implements _Air {
  const _$_Air({required final List<Sensor>? sensors}) : _sensors = sensors;

  factory _$_Air.fromJson(Map<String, dynamic> json) => _$$_AirFromJson(json);

  final List<Sensor>? _sensors;
  @override
  List<Sensor>? get sensors {
    final value = _sensors;
    if (value == null) return null;
    if (_sensors is EqualUnmodifiableListView) return _sensors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Air(sensors: $sensors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Air &&
            const DeepCollectionEquality().equals(other._sensors, _sensors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sensors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AirCopyWith<_$_Air> get copyWith =>
      __$$_AirCopyWithImpl<_$_Air>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AirToJson(
      this,
    );
  }
}

abstract class _Air implements Air {
  const factory _Air({required final List<Sensor>? sensors}) = _$_Air;

  factory _Air.fromJson(Map<String, dynamic> json) = _$_Air.fromJson;

  @override
  List<Sensor>? get sensors;
  @override
  @JsonKey(ignore: true)
  _$$_AirCopyWith<_$_Air> get copyWith => throw _privateConstructorUsedError;
}
