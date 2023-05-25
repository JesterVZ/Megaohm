// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetDataRequest _$GetDataRequestFromJson(Map<String, dynamic> json) {
  return _GetDataRequest.fromJson(json);
}

/// @nodoc
mixin _$GetDataRequest {
  DateTime get start_date => throw _privateConstructorUsedError;
  DateTime get end_date => throw _privateConstructorUsedError;
  Discrete get discrete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetDataRequestCopyWith<GetDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDataRequestCopyWith<$Res> {
  factory $GetDataRequestCopyWith(
          GetDataRequest value, $Res Function(GetDataRequest) then) =
      _$GetDataRequestCopyWithImpl<$Res, GetDataRequest>;
  @useResult
  $Res call({DateTime start_date, DateTime end_date, Discrete discrete});
}

/// @nodoc
class _$GetDataRequestCopyWithImpl<$Res, $Val extends GetDataRequest>
    implements $GetDataRequestCopyWith<$Res> {
  _$GetDataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start_date = null,
    Object? end_date = null,
    Object? discrete = null,
  }) {
    return _then(_value.copyWith(
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end_date: null == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      discrete: null == discrete
          ? _value.discrete
          : discrete // ignore: cast_nullable_to_non_nullable
              as Discrete,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetDataRequestCopyWith<$Res>
    implements $GetDataRequestCopyWith<$Res> {
  factory _$$_GetDataRequestCopyWith(
          _$_GetDataRequest value, $Res Function(_$_GetDataRequest) then) =
      __$$_GetDataRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime start_date, DateTime end_date, Discrete discrete});
}

/// @nodoc
class __$$_GetDataRequestCopyWithImpl<$Res>
    extends _$GetDataRequestCopyWithImpl<$Res, _$_GetDataRequest>
    implements _$$_GetDataRequestCopyWith<$Res> {
  __$$_GetDataRequestCopyWithImpl(
      _$_GetDataRequest _value, $Res Function(_$_GetDataRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start_date = null,
    Object? end_date = null,
    Object? discrete = null,
  }) {
    return _then(_$_GetDataRequest(
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end_date: null == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      discrete: null == discrete
          ? _value.discrete
          : discrete // ignore: cast_nullable_to_non_nullable
              as Discrete,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetDataRequest implements _GetDataRequest {
  const _$_GetDataRequest(
      {required this.start_date,
      required this.end_date,
      required this.discrete});

  factory _$_GetDataRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetDataRequestFromJson(json);

  @override
  final DateTime start_date;
  @override
  final DateTime end_date;
  @override
  final Discrete discrete;

  @override
  String toString() {
    return 'GetDataRequest(start_date: $start_date, end_date: $end_date, discrete: $discrete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetDataRequest &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.discrete, discrete) ||
                other.discrete == discrete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start_date, end_date, discrete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetDataRequestCopyWith<_$_GetDataRequest> get copyWith =>
      __$$_GetDataRequestCopyWithImpl<_$_GetDataRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetDataRequestToJson(
      this,
    );
  }
}

abstract class _GetDataRequest implements GetDataRequest {
  const factory _GetDataRequest(
      {required final DateTime start_date,
      required final DateTime end_date,
      required final Discrete discrete}) = _$_GetDataRequest;

  factory _GetDataRequest.fromJson(Map<String, dynamic> json) =
      _$_GetDataRequest.fromJson;

  @override
  DateTime get start_date;
  @override
  DateTime get end_date;
  @override
  Discrete get discrete;
  @override
  @JsonKey(ignore: true)
  _$$_GetDataRequestCopyWith<_$_GetDataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
