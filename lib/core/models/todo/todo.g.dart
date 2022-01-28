// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Todo _$$_TodoFromJson(Map<String, dynamic> json) => _$_Todo(
      id: json['id'] as String? ?? '',
      text: json['text'] as String?,
      completed: json['completed'] as bool?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      due: json['due'] == null ? null : DateTime.parse(json['due'] as String),
    );

Map<String, dynamic> _$$_TodoToJson(_$_Todo instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'completed': instance.completed,
      'created': instance.created?.toIso8601String(),
      'due': instance.due?.toIso8601String(),
    };
