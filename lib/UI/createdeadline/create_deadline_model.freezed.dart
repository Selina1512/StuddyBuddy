// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_deadline_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateDeadlineModel {
  Map<String, bool> get selectedDays => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateDeadlineModelCopyWith<CreateDeadlineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDeadlineModelCopyWith<$Res> {
  factory $CreateDeadlineModelCopyWith(
          CreateDeadlineModel value, $Res Function(CreateDeadlineModel) then) =
      _$CreateDeadlineModelCopyWithImpl<$Res, CreateDeadlineModel>;
  @useResult
  $Res call({Map<String, bool> selectedDays});
}

/// @nodoc
class _$CreateDeadlineModelCopyWithImpl<$Res, $Val extends CreateDeadlineModel>
    implements $CreateDeadlineModelCopyWith<$Res> {
  _$CreateDeadlineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDays = null,
  }) {
    return _then(_value.copyWith(
      selectedDays: null == selectedDays
          ? _value.selectedDays
          : selectedDays // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateDeadlineModelImplCopyWith<$Res>
    implements $CreateDeadlineModelCopyWith<$Res> {
  factory _$$CreateDeadlineModelImplCopyWith(_$CreateDeadlineModelImpl value,
          $Res Function(_$CreateDeadlineModelImpl) then) =
      __$$CreateDeadlineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, bool> selectedDays});
}

/// @nodoc
class __$$CreateDeadlineModelImplCopyWithImpl<$Res>
    extends _$CreateDeadlineModelCopyWithImpl<$Res, _$CreateDeadlineModelImpl>
    implements _$$CreateDeadlineModelImplCopyWith<$Res> {
  __$$CreateDeadlineModelImplCopyWithImpl(_$CreateDeadlineModelImpl _value,
      $Res Function(_$CreateDeadlineModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDays = null,
  }) {
    return _then(_$CreateDeadlineModelImpl(
      selectedDays: null == selectedDays
          ? _value._selectedDays
          : selectedDays // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$CreateDeadlineModelImpl implements _CreateDeadlineModel {
  _$CreateDeadlineModelImpl({required final Map<String, bool> selectedDays})
      : _selectedDays = selectedDays;

  final Map<String, bool> _selectedDays;
  @override
  Map<String, bool> get selectedDays {
    if (_selectedDays is EqualUnmodifiableMapView) return _selectedDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedDays);
  }

  @override
  String toString() {
    return 'CreateDeadlineModel(selectedDays: $selectedDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDeadlineModelImpl &&
            const DeepCollectionEquality()
                .equals(other._selectedDays, _selectedDays));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedDays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDeadlineModelImplCopyWith<_$CreateDeadlineModelImpl> get copyWith =>
      __$$CreateDeadlineModelImplCopyWithImpl<_$CreateDeadlineModelImpl>(
          this, _$identity);
}

abstract class _CreateDeadlineModel implements CreateDeadlineModel {
  factory _CreateDeadlineModel(
          {required final Map<String, bool> selectedDays}) =
      _$CreateDeadlineModelImpl;

  @override
  Map<String, bool> get selectedDays;
  @override
  @JsonKey(ignore: true)
  _$$CreateDeadlineModelImplCopyWith<_$CreateDeadlineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
