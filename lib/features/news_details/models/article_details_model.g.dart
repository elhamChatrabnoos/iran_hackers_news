// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDetailsModel _$ArticleDetailsModelFromJson(Map<String, dynamic> json) =>
    ArticleDetailsModel(
      pic: json['pic'] == null ? null : Pic.fromJson(json['pic']),
      id: json['id'] as String?,
      title: json['title'] as String?,
      type: json['type'] as String?,
      content: json['content'] as String?,
      date: json['date'] as String?,
      refrence: json['refrence'] as String?,
      v: json['v'] as num?,
    );

Map<String, dynamic> _$ArticleDetailsModelToJson(
        ArticleDetailsModel instance) =>
    <String, dynamic>{
      'pic': instance.pic,
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'content': instance.content,
      'date': instance.date,
      'refrence': instance.refrence,
      'v': instance.v,
    };
