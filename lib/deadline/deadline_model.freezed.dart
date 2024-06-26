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
mixin _$Task {
  String get taskType => throw _privateConstructorUsedError;
  bool get taskCompleted => throw _privateConstructorUsedError;
  String get course => throw _privateConstructorUsedError;
  String get daysLeft => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {String taskType, bool taskCompleted, String course, String daysLeft});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskType = null,
    Object? taskCompleted = null,
    Object? course = null,
    Object? daysLeft = null,
  }) {
    return _then(_value.copyWith(
      taskType: null == taskType
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as String,
      taskCompleted: null == taskCompleted
          ? _value.taskCompleted
          : taskCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      daysLeft: null == daysLeft
          ? _value.daysLeft
          : daysLeft // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String taskType, bool taskCompleted, String course, String daysLeft});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskType = null,
    Object? taskCompleted = null,
    Object? course = null,
    Object? daysLeft = null,
  }) {
    return _then(_$TaskImpl(
      taskType: null == taskType
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as String,
      taskCompleted: null == taskCompleted
          ? _value.taskCompleted
          : taskCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      course: null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as String,
      daysLeft: null == daysLeft
          ? _value.daysLeft
          : daysLeft // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TaskImpl implements _Task {
  _$TaskImpl(
      {required this.taskType,
      required this.taskCompleted,
      required this.course,
      required this.daysLeft});

  @override
  final String taskType;
  @override
  final bool taskCompleted;
  @override
  final String course;
  @override
  final String daysLeft;

  @override
  String toString() {
    return 'Task(taskType: $taskType, taskCompleted: $taskCompleted, course: $course, daysLeft: $daysLeft)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.taskType, taskType) ||
                other.taskType == taskType) &&
            (identical(other.taskCompleted, taskCompleted) ||
                other.taskCompleted == taskCompleted) &&
            (identical(other.course, course) || other.course == course) &&
            (identical(other.daysLeft, daysLeft) ||
                other.daysLeft == daysLeft));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, taskType, taskCompleted, course, daysLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);
}

abstract class _Task implements Task {
  factory _Task(
      {required final String taskType,
      required final bool taskCompleted,
      required final String course,
      required final String daysLeft}) = _$TaskImpl;

  @override
  String get taskType;
  @override
  bool get taskCompleted;
  @override
  String get course;
  @override
  String get daysLeft;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeadlineModel {
  List<Task> get deadlines => throw _privateConstructorUsedError;

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
  $Res call({List<Task> deadlines});
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
    Object? deadlines = null,
  }) {
    return _then(_value.copyWith(
      deadlines: null == deadlines
          ? _value.deadlines
          : deadlines // ignore: cast_nullable_to_non_nullable
              as List<Task>,
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
  $Res call({List<Task> deadlines});
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
    Object? deadlines = null,
  }) {
    return _then(_$DeadlineModelImpl(
      deadlines: null == deadlines
          ? _value._deadlines
          : deadlines // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$DeadlineModelImpl implements _DeadlineModel {
  _$DeadlineModelImpl({required final List<Task> deadlines})
      : _deadlines = deadlines;

  final List<Task> _deadlines;
  @override
  List<Task> get deadlines {
    if (_deadlines is EqualUnmodifiableListView) return _deadlines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deadlines);
  }

  @override
  String toString() {
    return 'DeadlineModel(deadlines: $deadlines)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeadlineModelImpl &&
            const DeepCollectionEquality()
                .equals(other._deadlines, _deadlines));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_deadlines));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeadlineModelImplCopyWith<_$DeadlineModelImpl> get copyWith =>
      __$$DeadlineModelImplCopyWithImpl<_$DeadlineModelImpl>(this, _$identity);
}

abstract class _DeadlineModel implements DeadlineModel {
  factory _DeadlineModel({required final List<Task> deadlines}) =
      _$DeadlineModelImpl;

  @override
  List<Task> get deadlines;
  @override
  @JsonKey(ignore: true)
  _$$DeadlineModelImplCopyWith<_$DeadlineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
