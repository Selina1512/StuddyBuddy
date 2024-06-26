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
  int get currentValue => throw _privateConstructorUsedError;
  List<TaskDetail> get details => throw _privateConstructorUsedError;

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
  $Res call({int currentValue, List<TaskDetail> details});
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
    Object? currentValue = null,
    Object? details = null,
  }) {
    return _then(_value.copyWith(
      currentValue: null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as List<TaskDetail>,
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
  $Res call({int currentValue, List<TaskDetail> details});
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
    Object? currentValue = null,
    Object? details = null,
  }) {
    return _then(_$CreateDeadlineModelImpl(
      currentValue: null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as int,
      details: null == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<TaskDetail>,
    ));
  }
}

/// @nodoc

class _$CreateDeadlineModelImpl implements _CreateDeadlineModel {
  _$CreateDeadlineModelImpl(
      {required this.currentValue, required final List<TaskDetail> details})
      : _details = details;

  @override
  final int currentValue;
  final List<TaskDetail> _details;
  @override
  List<TaskDetail> get details {
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_details);
  }

  @override
  String toString() {
    return 'CreateDeadlineModel(currentValue: $currentValue, details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDeadlineModelImpl &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentValue, const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDeadlineModelImplCopyWith<_$CreateDeadlineModelImpl> get copyWith =>
      __$$CreateDeadlineModelImplCopyWithImpl<_$CreateDeadlineModelImpl>(
          this, _$identity);
}

abstract class _CreateDeadlineModel implements CreateDeadlineModel {
  factory _CreateDeadlineModel(
      {required final int currentValue,
      required final List<TaskDetail> details}) = _$CreateDeadlineModelImpl;

  @override
  int get currentValue;
  @override
  List<TaskDetail> get details;
  @override
  @JsonKey(ignore: true)
  _$$CreateDeadlineModelImplCopyWith<_$CreateDeadlineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskDetail {
  String get taskDescription => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get time => throw _privateConstructorUsedError;
  int get rhythm => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskDetailCopyWith<TaskDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDetailCopyWith<$Res> {
  factory $TaskDetailCopyWith(
          TaskDetail value, $Res Function(TaskDetail) then) =
      _$TaskDetailCopyWithImpl<$Res, TaskDetail>;
  @useResult
  $Res call({String taskDescription, DateTime date, int time, int rhythm});
}

/// @nodoc
class _$TaskDetailCopyWithImpl<$Res, $Val extends TaskDetail>
    implements $TaskDetailCopyWith<$Res> {
  _$TaskDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskDescription = null,
    Object? date = null,
    Object? time = null,
    Object? rhythm = null,
  }) {
    return _then(_value.copyWith(
      taskDescription: null == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      rhythm: null == rhythm
          ? _value.rhythm
          : rhythm // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskDetailImplCopyWith<$Res>
    implements $TaskDetailCopyWith<$Res> {
  factory _$$TaskDetailImplCopyWith(
          _$TaskDetailImpl value, $Res Function(_$TaskDetailImpl) then) =
      __$$TaskDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String taskDescription, DateTime date, int time, int rhythm});
}

/// @nodoc
class __$$TaskDetailImplCopyWithImpl<$Res>
    extends _$TaskDetailCopyWithImpl<$Res, _$TaskDetailImpl>
    implements _$$TaskDetailImplCopyWith<$Res> {
  __$$TaskDetailImplCopyWithImpl(
      _$TaskDetailImpl _value, $Res Function(_$TaskDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskDescription = null,
    Object? date = null,
    Object? time = null,
    Object? rhythm = null,
  }) {
    return _then(_$TaskDetailImpl(
      taskDescription: null == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      rhythm: null == rhythm
          ? _value.rhythm
          : rhythm // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TaskDetailImpl implements _TaskDetail {
  _$TaskDetailImpl(
      {required this.taskDescription,
      required this.date,
      required this.time,
      required this.rhythm});

  @override
  final String taskDescription;
  @override
  final DateTime date;
  @override
  final int time;
  @override
  final int rhythm;

  @override
  String toString() {
    return 'TaskDetail(taskDescription: $taskDescription, date: $date, time: $time, rhythm: $rhythm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDetailImpl &&
            (identical(other.taskDescription, taskDescription) ||
                other.taskDescription == taskDescription) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.rhythm, rhythm) || other.rhythm == rhythm));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, taskDescription, date, time, rhythm);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDetailImplCopyWith<_$TaskDetailImpl> get copyWith =>
      __$$TaskDetailImplCopyWithImpl<_$TaskDetailImpl>(this, _$identity);
}

abstract class _TaskDetail implements TaskDetail {
  factory _TaskDetail(
      {required final String taskDescription,
      required final DateTime date,
      required final int time,
      required final int rhythm}) = _$TaskDetailImpl;

  @override
  String get taskDescription;
  @override
  DateTime get date;
  @override
  int get time;
  @override
  int get rhythm;
  @override
  @JsonKey(ignore: true)
  _$$TaskDetailImplCopyWith<_$TaskDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
