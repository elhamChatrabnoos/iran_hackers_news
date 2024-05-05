import 'package:json_annotation/json_annotation.dart';

/// pic : {"picName":"putty","picUrl":"https://iran-hackersnews.info/putty.jpg"}
/// _id : "661e6708d38929c1c602313e"
/// title : "کلاینت پرکاربرد PuTTY SSH در برابر حمله بازیابی کلید آسیب پذیر است"
/// type : "vulnerability"
/// content : "نگهدارندگان PuTTY Secure Shell (SSH) و کلاینت Telnet به کاربران هشدار می‌دهند که آسیب‌پذیری مهمی بر نسخه‌های 0.68 تا 0.80 تأثیر می‌گذارد که می‌تواند برای دستیابی به بازیابی کامل کلیدهای خصوصی NIST P-521 (ecdsa-sha2-nistp521) مورد سوء استفاده قرار گیرد.\r\n\r\nاین نقص به شناسه CVE CVE-2024-31497 اختصاص یافته است و این کشف به محققین Fabian Bäumer و Marcus Brinkmann از دانشگاه روهر بوخوم نسبت داده شده است.\r\n\r\nپروژه PuTTY در مشاوره ای گفت: \"اثر آسیب پذیری به خطر انداختن کلید خصوصی است.\"\r\n\r\nمهاجمی که چند ده پیام امضا شده و کلید عمومی را در اختیار دارد، اطلاعات کافی برای بازیابی کلید خصوصی دارد و سپس امضاهایی را جعل می کند که گویی از طرف شما هستند و به آنها اجازه می دهد (به عنوان مثال) به هر سروری که از آن استفاده می کنید وارد شود. کلید برای.\"\r\n\r\nامنیت سایبری\r\nبا این حال، برای به دست آوردن امضاها، مهاجم باید سروری را که از کلید برای احراز هویت استفاده می‌شود، به خطر بیاندازد.\r\n\r\nبومر در پیامی که در لیست پستی امنیت نرم‌افزار منبع باز (oss-sec) ارسال شد، این نقص را ناشی از تولید nonces رمزنگاری ECDSA مغرضانه توصیف کرد که می‌تواند بازیابی کلید خصوصی را فعال کند.\r\n\r\nبومر توضیح داد: \"9 بیت اول هر نونس ECDSA صفر است.\" این امکان بازیابی کامل کلید مخفی را در تقریباً 60 امضا با استفاده از تکنیک‌های پیشرفته فراهم می‌کند.»\r\n\r\nاین امضاها را می‌توان یا توسط یک سرور مخرب جمع‌آوری کرد (حملات انسان در وسط با توجه به اینکه کلاینت‌ها امضای خود را به صورت واضح منتقل نمی‌کنند امکان‌پذیر نیست) یا از هر منبع دیگری، به‌عنوان مثال، git امضا شده از طریق عوامل ارسال‌شده، جمع‌آوری شوند.»\r\n\r\nعلاوه بر تاثیر بر PuTTY، سایر محصولاتی را که دارای نسخه آسیب‌پذیر نرم‌افزار هستند نیز تحت تاثیر قرار می‌دهد -\r\n\r\nFileZilla (3.24.1 - 3.66.5)\r\nWinSCP (5.9.5 - 6.3.2)\r\nTortoiseGit (2.4.0.2 - 2.15.0)\r\nTortoiseSVN (1.10.0 - 1.14.6)\r\nامنیت سایبری\r\nپس از افشای مسئولانه، این مشکل در PuTTY 0.81، FileZilla 3.67.0، WinSCP 6.3.3 و TortoiseGit 2.15.0.1 بررسی شده است. به کاربران TortoiseSVN توصیه می شود هنگام دسترسی به مخزن SVN از طریق SSH تا زمانی که یک پچ در دسترس قرار گیرد، از Plink از آخرین نسخه PuTTY 0.81 استفاده کنند.\r\n\r\nبه طور خاص، با تغییر به تکنیک RFC 6979 برای همه انواع کلیدهای DSA و ECDSA، کنار گذاشتن روش قبلی خود برای استخراج nonce با استفاده از یک رویکرد قطعی که در عین اجتناب از نیاز به منبع تصادفی با کیفیت بالا، مستعد بود، حل شده است. در هنگام استفاده از P-521 به موارد مغرضانه.\r\n\r\nعلاوه بر این، کلیدهای ECDSA NIST-P521 که با هر یک از مؤلفه‌های آسیب‌پذیر استفاده می‌شوند، باید به خطر افتاده و در نتیجه با حذف آن‌ها از فایل‌های فایل authorized_keys و معادل‌های آن‌ها در سایر سرورهای SSH، باطل شوند."
/// id : "46.4237376418865"
/// date : "2 / 3 / 2024"
/// refrence : "The Hacker News / NewsRoom"
/// __v : 0

part 'news_details_model.g.dart';

@JsonSerializable()
class NewsDetailsModel {
  NewsDetailsModel({
    this.pic,
    this.title,
    this.type,
    this.content,
    this.id,
    this.date,
    this.refrence,
    this.v,
  });

  NewsDetailsModel.fromJson(dynamic json) {
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
  String? title;
  String? type;
  String? content;
  String? id;
  String? date;
  String? refrence;
  num? v;

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

/// picName : "putty"
/// picUrl : "https://iran-hackersnews.info/putty.jpg"

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
