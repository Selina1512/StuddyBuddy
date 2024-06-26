// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_details.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskDetailsAdapter extends TypeAdapter<TaskDetails> {
  @override
  final int typeId = 0;

  @override
  TaskDetails read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskDetails(
      taskDescription: fields[0] as String,
      date: fields[1] as String,
      time: fields[2] as int,
      rhythm: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, TaskDetails obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.taskDescription)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.rhythm);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskDetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
