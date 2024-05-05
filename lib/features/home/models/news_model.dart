import 'package:json_annotation/json_annotation.dart';

/// title : "کلاینت پرکاربرد PuTTY SSH در برابر حمله بازیابی کلید آسیب پذیر است"
/// date : "2 / 3 / 2024"
/// description : "نگهدارندگان PuTTY Secure Shell (SSH) و کلاینت Telnet به کاربران هشدار می‌دهند که آسیب‌پذیری مهمی بر "
/// id : "46.4237376418865"
/// picName : "putty"
/// picUrl : "https://iran-hackersnews.info/putty.jpg"
/// refrence : "The Hacker News / NewsRoom"

part 'news_model.g.dart';

@JsonSerializable()
class NewsModel {
  NewsModel({
    this.title,
    this.date,
    this.description,
    this.id,
    this.picName,
    this.picUrl,
    this.refrence,
  });

  NewsModel.fromJson(dynamic json) {
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

  NewsModel copyWith({
    String? title,
    String? date,
    String? description,
    String? id,
    String? picName,
    String? picUrl,
    String? refrence,
  }) =>
      NewsModel(
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
