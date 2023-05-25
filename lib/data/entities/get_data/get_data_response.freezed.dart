// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_data_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetDataResponse _$GetDataResponseFromJson(Map<String, dynamic> json) {
  return _GetDataResponse.fromJson(json);
}

/// @nodoc
mixin _$GetDataResponse {
  Air? get air => throw _privateConstructorUsedError;
  String? get ts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataResponseCopyWith<GetDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataResponseCopyWith<$Res> {
  factory $GetDataResponseCopyWith(
          GetDataResponse value, $Res Function(GetDataResponse) then) =
      _$GetDataResponseCopyWithImpl<$Res, GetDataResponse>;
  @useResult
  $Res call({Air? air, String? ts});

  $AirCopyWith<$Res>? get air;
}

/// @nodoc
class _$GetDataResponseCopyWithImpl<$Res, $Val extends GetDataResponse>
    implements $GetDataResponseCopyWith<$Res> {
  _$GetDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? air = freezed,
    Object? ts = freezed,
  }) {
    return _then(_value.copyWith(
      air: freezed == air
          ? _value.air
          : air // ignore: cast_nullable_to_non_nullable
              as Air?,
      ts: freezed == ts
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AirCopyWith<$Res>? get air {
    if (_value.air == null) {
      return null;
    }

    return $AirCopyWith<$Res>(_value.air!, (value) {
      return _then(_value.copyWith(air: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GetDataResponseCopyWith<$Res>
    implements $GetDataResponseCopyWith<$Res> {
  factory _$$_GetDataResponseCopyWith(
          _$_GetDataResponse value, $Res Function(_$_GetDataResponse) then) =
      __$$_GetDataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Air? air, String? ts});

  @override
  $AirCopyWith<$Res>? get air;
}

/// @nodoc
class __$$_GetDataResponseCopyWithImpl<$Res>
    extends _$GetDataResponseCopyWithImpl<$Res, _$_GetDataResponse>
    implements _$$_GetDataResponseCopyWith<$Res> {
  __$$_GetDataResponseCopyWithImpl(
      _$_GetDataResponse _value, $Res Function(_$_GetDataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? air = freezed,
    Object? ts = freezed,
  }) {
    return _then(_$_GetDataResponse(
      air: freezed == air
          ? _value.air
          : air // ignore: cast_nullable_to_non_nullable
              as Air?,
      ts: freezed == ts
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataResponse implements _GetDataResponse {
  const _$_GetDataResponse({required this.air, required this.ts});

  factory _$_GetDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetDataResponseFromJson(json);

  @override
  final Air? air;
  @override
  final String? ts;

  @override
  String toString() {
    return 'GetDataResponse(air: $air, ts: $ts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDataResponse &&
            (identical(other.air, air) || other.air == air) &&
            (identical(other.ts, ts) || other.ts == ts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, air, ts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataResponseCopyWith<_$_GetDataResponse> get copyWith =>
      __$$_GetDataResponseCopyWithImpl<_$_GetDataResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataResponseToJson(
      this,
    );
  }
}

abstract class _GetDataResponse implements GetDataResponse {
  const factory _GetDataResponse(
      {required final Air? air,
      required final String? ts}) = _$_GetDataResponse;

  factory _GetDataResponse.fromJson(Map<String, dynamic> json) =
      _$_GetDataResponse.fromJson;

  @override
  Air? get air;
  @override
  String? get ts;
  @override
  @JsonKey(ignore: true)
  _$$_GetDataResponseCopyWith<_$_GetDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
