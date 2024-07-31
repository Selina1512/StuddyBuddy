// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_details_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskDetailsModelAdapter extends TypeAdapter<TaskDetailsModel> {
  @override
  final int typeId = 0;

  @override
  TaskDetailsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TaskDetailsModel(
      taskDescription: fields[0] as String,
      date: fields[1] as String,
      time: fields[2] as int,
      selectedDays: (fields[3] as List).cast<String>(),
      id: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, TaskDetailsModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.taskDescription)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.selectedDays)
      ..writeByte(4)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskDetailsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
