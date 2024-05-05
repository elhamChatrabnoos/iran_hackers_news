// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultModel _$SearchResultModelFromJson(Map<String, dynamic> json) =>
    SearchResultModel(
      searchTitle: json['searchTitle'] as String?,
      searchResault: (json['searchResault'] as List<dynamic>?)
          ?.map(NewsDetailsModel.fromJson)
          .toList(),
    );

Map<String, dynamic> _$SearchResultModelToJson(SearchResultModel instance) =>
    <String, dynamic>{
      'searchTitle': instance.searchTitle,
      'searchResault': instance.searchResault,
    };
