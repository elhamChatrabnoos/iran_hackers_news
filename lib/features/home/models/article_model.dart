import 'package:json_annotation/json_annotation.dart';

/// title : "kevin mitnick(بزرگترین هکر دنیا)"
/// date : "چهارشنبه - 29 فروردین 1403"
/// description : "کوین میتنیک زمانی گریزان ترین مهاجم سایبری تاریخ بود که توسط CNN، فاکس نیوز و سایر شبکه های معتبر به"
/// id : "92.7311545265055"
/// picName : "kevinArticle"
/// picUrl : "https://iran-hackersnews.info/kevinArticle.jpg"
/// refrence : "https://www.mitnicksecurity.com/"

part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel {
  ArticleModel({
    this.title,
    this.date,
    this.description,
    this.id,
    this.picName,
    this.picUrl,
    this.refrence,
  });

  ArticleModel.fromJson(dynamic json) {
    title = json['title'];
    date = json['date'];
    description = json['description'];
    id = json['id'];
    picName = json['picName'];
    picUrl = json['picUrl'];
    refrence = json['refrence'];
  }

  String? title;
  String? date;
  String? description;
  String? id;
  String? picName;
  String? picUrl;
  String? refrence;

  ArticleModel copyWith({
    String? title,
    String? date,
    String? description,
    String? id,
    String? picName,
    String? picUrl,
    String? refrence,
  }) =>
      ArticleModel(
        title: title ?? this.title,
        date: date ?? this.date,
        description: description ?? this.description,
        id: id ?? this.id,
        picName: picName ?? this.picName,
        picUrl: picUrl ?? this.picUrl,
        refrence: refrence ?? this.refrence,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['date'] = date;
    map['description'] = description;
    map['id'] = id;
    map['picName'] = picName;
    map['picUrl'] = picUrl;
    map['refrence'] = refrence;
    return map;
  }
}
