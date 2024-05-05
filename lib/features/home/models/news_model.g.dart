// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => NewsModel(
      title: json['title'] as String?,
      date: json['date'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
      picName: json['picName'] as String?,
      picUrl: json['picUrl'] as String?,
      refrence: json['refrence'] as String?,
    );

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
      'title': instance.title,
      'date': instance.date,
      'description': instance.description,
      'id': instance.id,
      'picName': instance.picName,
      'picUrl': instance.picUrl,
      'refrence': instance.refrence,
    };
