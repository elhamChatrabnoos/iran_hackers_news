// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsDetailsModel _$NewsDetailsModelFromJson(Map<String, dynamic> json) =>
    NewsDetailsModel(
      pic: json['pic'] == null ? null : Pic.fromJson(json['pic']),
      title: json['title'] as String?,
      type: json['type'] as String?,
      content: json['content'] as String?,
      id: json['id'] as String?,
      date: json['date'] as String?,
      refrence: json['refrence'] as String?,
      v: json['v'] as num?,
    );

Map<String, dynamic> _$NewsDetailsModelToJson(NewsDetailsModel instance) =>
    <String, dynamic>{
      'pic': instance.pic,
      'title': instance.title,
      'type': instance.type,
      'content': instance.content,
      'id': instance.id,
      'date': instance.date,
      'refrence': instance.refrence,
      'v': instance.v,
    };
