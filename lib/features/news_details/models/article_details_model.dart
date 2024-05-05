import 'package:json_annotation/json_annotation.dart';

/// pic : {"picName":"KerbruteArticle","picUrl":"https://iran-hackersnews.info/KerbruteArticle.jpg"}
/// _id : "6626a3ee482e8ad25e7f4056"
/// title : "راهنمای مفصل در مورد Kerbrute"
/// type : "trends"
/// content : "سرویس Kerberos بر روی پورت پیش فرض خود که 88 در سیستم کنترل کننده دامنه است اجرا می شود. این سرویس در ویندوز و سیستم لینوکس و همچنین جایی که برای پیاده سازی فرآیندهای احراز هویت با امنیت بیشتری در محیط اکتیو دایرکتوری استفاده می شود ارائه می شود. برای اطلاعات بیشتر در مورد فرآیند احراز هویت Kerberos و نام اصلی سرویس (SPN) لطفاً از پیوند زیر دیدن کنید:\r\n\r\nhttps://www.hackingarticles.in/deep-dive-into-kerberoasting-attack/\r\n"
/// id : "14.90837082203611"
/// date : "دوشنبه - 3 اردیبهشت 1403"
/// refrence : "https://www.hackingarticles.in/"
/// __v : 0


part 'article_details_model.g.dart';

@JsonSerializable()
class ArticleDetailsModel {
  ArticleDetailsModel({
    this.pic,
    this.id,
    this.title,
    this.type,
    this.content,
    this.date,
    this.refrence,
    this.v,
  });

  ArticleDetailsModel.fromJson(dynamic json) {
    pic = json['pic'] != null ? Pic.fromJson(json['pic']) : null;
    title = json['title'];
    type = json['type'];
    content = json['content'];
    id = json['id'];
    date = json['date'];
    refrence = json['refrence'];
    v = json['__v'];
  }

  Pic? pic;
  String? id;
  String? title;
  String? type;
  String? content;
  String? date;
  String? refrence;
  num? v;

  ArticleDetailsModel copyWith({
    Pic? pic,
    String? id,
    String? title,
    String? type,
    String? content,
    String? date,
    String? refrence,
    num? v,
  }) =>
      ArticleDetailsModel(
        pic: pic ?? this.pic,
        id: id ?? this.id,
        title: title ?? this.title,
        type: type ?? this.type,
        content: content ?? this.content,
        date: date ?? this.date,
        refrence: refrence ?? this.refrence,
        v: v ?? this.v,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (pic != null) {
      map['pic'] = pic?.toJson();
    }
    map['title'] = title;
    map['type'] = type;
    map['content'] = content;
    map['id'] = id;
    map['date'] = date;
    map['refrence'] = refrence;
    map['__v'] = v;
    return map;
  }
}

/// picName : "KerbruteArticle"
/// picUrl : "https://iran-hackersnews.info/KerbruteArticle.jpg"

class Pic {
  Pic({
    this.picName,
    this.picUrl,
  });

  Pic.fromJson(dynamic json) {
    picName = json['picName'];
    picUrl = json['picUrl'];
  }

  String? picName;
  String? picUrl;

  Pic copyWith({
    String? picName,
    String? picUrl,
  }) =>
      Pic(
        picName: picName ?? this.picName,
        picUrl: picUrl ?? this.picUrl,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['picName'] = picName;
    map['picUrl'] = picUrl;
    return map;
  }
}
