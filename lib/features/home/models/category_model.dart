import 'package:json_annotation/json_annotation.dart';

/// allCategory : ["vulnerability","cyberattack","databreaches","mallware","ransomware"]

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  CategoryModel({
    this.allCategory,
  });

  CategoryModel.fromJson(dynamic json) {
    allCategory =
        json['allCategory'] != null ? json['allCategory'].cast<String>() : [];
  }

  List<String>? allCategory;

  CategoryModel copyWith({
    List<String>? allCategory,
  }) =>
      CategoryModel(
        allCategory: allCategory ?? this.allCategory,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['allCategory'] = allCategory;
    return map;
  }
}
