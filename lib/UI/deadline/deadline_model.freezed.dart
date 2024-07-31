// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deadline_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeadlineModel {
  int get values => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeadlineModelCopyWith<DeadlineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeadlineModelCopyWith<$Res> {
  factory $DeadlineModelCopyWith(
          DeadlineModel value, $Res Function(DeadlineModel) then) =
      _$DeadlineModelCopyWithImpl<$Res, DeadlineModel>;
  @useResult
  $Res call({int values});
}

/// @nodoc
class _$DeadlineModelCopyWithImpl<$Res, $Val extends DeadlineModel>
    implements $DeadlineModelCopyWith<$Res> {
  _$DeadlineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_value.copyWith(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeadlineModelImplCopyWith<$Res>
    implements $DeadlineModelCopyWith<$Res> {
  factory _$$DeadlineModelImplCopyWith(
          _$DeadlineModelImpl value, $Res Function(_$DeadlineModelImpl) then) =
      __$$DeadlineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int values});
}

/// @nodoc
class __$$DeadlineModelImplCopyWithImpl<$Res>
    extends _$DeadlineModelCopyWithImpl<$Res, _$DeadlineModelImpl>
    implements _$$DeadlineModelImplCopyWith<$Res> {
  __$$DeadlineModelImplCopyWithImpl(
      _$DeadlineModelImpl _value, $Res Function(_$DeadlineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? values = null,
  }) {
    return _then(_$DeadlineModelImpl(
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeadlineModelImpl implements _DeadlineModel {
  _$DeadlineModelImpl({required this.values});

  @override
  final int values;

  @override
  String toString() {
    return 'DeadlineModel(values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeadlineModelImpl &&
            (identical(other.values, values) || other.values == values));
  }

  @override
  int get hashCode => Object.hash(runtimeType, values);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeadlineModelImplCopyWith<_$DeadlineModelImpl> get copyWith =>
      __$$DeadlineModelImplCopyWithImpl<_$DeadlineModelImpl>(this, _$identity);
}

abstract class _DeadlineModel implements DeadlineModel {
  factory _DeadlineModel({required final int values}) = _$DeadlineModelImpl;

  @override
  int get values;
  @override
  @JsonKey(ignore: true)
  _$$DeadlineModelImplCopyWith<_$DeadlineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
