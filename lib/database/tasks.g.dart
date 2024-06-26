// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TasksAdapter extends TypeAdapter<Tasks> {
  @override
  final int typeId = 1;

  @override
  Tasks read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Tasks(
      taskType: fields[0] as String,
      taskCompleted: fields[1] as bool,
      course: fields[2] as String,
      daysLeft: fields[3] as int,
      taskName: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Tasks obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.taskType)
      ..writeByte(1)
      ..write(obj.taskCompleted)
      ..writeByte(2)
      ..write(obj.course)
      ..writeByte(3)
      ..write(obj.daysLeft)
      ..writeByte(4)
      ..write(obj.taskName);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TasksAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
