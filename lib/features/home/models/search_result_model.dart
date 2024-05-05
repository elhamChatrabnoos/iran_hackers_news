import 'package:hackers_news/features/news_details/models/news_details_model.dart';
import 'package:json_annotation/json_annotation.dart';

/// searchTitle : "بدافزار"
/// searchResault : [{"pic":{"picName":"hend","picUrl":"https://iran-hackersnews.info/hend.jpg"},"_id":"661d54f95b5dc37e84d3ea69","title":"هکرها با بدافزاری که به عنوان دعوت نیروی هوایی ظاهر می شوند، بخش های دفاعی و انرژی هند را مورد حمله قرار دادند","type":"databreaches","content":"نهادهای دولتی و شرکت های انرژی هند با هدف ارائه نسخه اصلاح شده از بدافزار سرقت اطلاعات منبع باز به نام HackBrowserData و استخراج اطلاعات حساس در برخی موارد با استفاده از Slack به عنوان فرمان و کنترل (C2) مورد هدف عوامل تهدید ناشناخته قرار گرفته اند. .\r\n\r\nArda Büyükkaya، محقق EclecticIQ در گزارشی که امروز منتشر شد، گفت: \"دزد اطلاعات از طریق یک ایمیل فیشینگ تحویل داده شد، که به عنوان دعوت نامه ای از نیروی هوایی هند ظاهر شد.\"\r\n\r\nمهاجم از کانال های Slack به عنوان نقاط نفوذ برای آپلود اسناد داخلی محرمانه، پیام های ایمیل خصوصی و داده های حافظه پنهان مرورگر وب پس از اجرای بدافزار استفاده کرد.\r\n\r\nاین کمپین که توسط شرکت امنیت سایبری هلندی از 7 مارس 2024 مشاهده شد، با نام رمز عملیات FlightNight در اشاره به کانال های Slack که توسط دشمن اداره می شود، نامگذاری شده است.\r\n\r\nامنیت سایبری\r\nاهداف این فعالیت های مخرب چندین نهاد دولتی در هند را شامل می شود که شامل موارد مرتبط با ارتباطات الکترونیکی، حاکمیت فناوری اطلاعات و دفاع ملی می شود.\r\n\r\nگفته می‌شود که این بازیگر تهدید با موفقیت شرکت‌های انرژی خصوصی، جمع‌آوری اسناد مالی، اطلاعات شخصی کارکنان، جزئیات فعالیت‌های حفاری نفت و گاز را به خطر انداخته است. در کل، حدود 8.81 گیگابایت داده در طول کمپین استخراج شده است.\r\n\r\n\r\nزنجیره حمله با یک پیام فیشینگ حاوی یک فایل ISO (\"invite.iso\") شروع می شود، که به نوبه خود حاوی یک میانبر ویندوز (LNK) است که اجرای یک باینری پنهان (\"scholar.exe\") را در داخل فایل اجرا می کند. تصویر دیسک نوری نصب شده\r\n\r\nبه طور همزمان، یک فایل PDF فریبنده که ظاهراً یک دعوت نامه از نیروی هوایی هند است به قربانی نمایش داده می شود در حالی که بدافزار به طور مخفیانه اسناد و داده های حافظه پنهان مرورگر وب را جمع آوری کرده و آنها را به یک کانال Slack تحت کنترل بازیگر به نام FlightNight منتقل می کند.\r\n\r\nاین بدافزار نسخه تغییر یافته HackBrowserData است که فراتر از ویژگی‌های سرقت داده‌های مرورگر خود می‌رود و از قابلیت‌هایی برای سیفون کردن اسناد (مایکروسافت آفیس، فایل‌های PDF و فایل‌های پایگاه داده SQL)، برقراری ارتباط از طریق Slack و فرار بهتر از تشخیص با استفاده از تکنیک‌های مبهم کردن فراتر می‌رود.\r\n\r\nامنیت سایبری\r\nگمان می رود که عامل تهدید، فایل پی دی اف فریبنده را در جریان نفوذ قبلی دزدیده باشد، با تشابهات رفتاری به یک کمپین فیشینگ که نیروی هوایی هند را با یک دزد مستقر در Go به نام GoStealer هدف قرار داده بود.\r\n\r\nجزئیات این فعالیت توسط یک محقق امنیتی هندی با نام مستعار xelemental (@ElementalX2) در اواسط ژانویه 2024 فاش شد.\r\n\r\nتوالی آلودگی GoStealer تقریباً با FlightNight یکسان است و از فریب هایی با مضمون تدارکات (\"SU-30 Aircraft Procurement.iso\") برای نمایش یک فایل طعمه استفاده می کند در حالی که محموله دزد برای استخراج اطلاعات مورد علاقه از Slack مستقر می شود.\r\n\r\nبا تطبیق ابزارهای تهاجمی آزادانه در دسترس و استفاده مجدد از زیرساخت های قانونی مانند Slack که در محیط های سازمانی رایج است، به عوامل تهدید اجازه می دهد زمان و هزینه های توسعه را کاهش دهند و همچنین به راحتی زیر رادار پرواز کنند.\r\n\r\n\r\nمنبع تصویر: ElementalX2\r\nمزایای بهره وری همچنین به این معنی است که انجام یک حمله هدفمند بسیار ساده تر است، حتی به مجرمان سایبری کمتر ماهر و مشتاق اجازه می دهد وارد عمل شوند و آسیب قابل توجهی به سازمان ها وارد کنند.\r\n\r\nBüyükkaya گفت: \"عملیات FlightNight و کمپین GoStealer رویکردی ساده و در عین حال موثر توسط عوامل تهدید برای استفاده از ابزارهای منبع باز برای جاسوسی سایبری را برجسته می کنند.\"\r\n\r\nاین امر بر چشم‌انداز در حال تحول تهدیدات سایبری تأکید می‌کند، که در آن بازیگران از ابزارها و پلت‌فرم‌های تهاجمی منبع باز استفاده می‌کنند تا با کمترین خطر شناسایی و سرمایه‌گذاری به اهداف خود دست یابند.»","id":"11.179747884326986","date":"Mon Apr 15 2024 09:25:29 GMT-0700 (Pacific Daylight Time)","refrence":"The Hacker News","__v":0},{"pic":{"picName":"timbre","picUrl":"https://iran-hackersnews.info/timbre.jpg"},"_id":"661e4207928826ef56997c47","title":"انتشار بدافزار TimbreStealer از طریق کلاهبرداری فیشینگ با موضوع مالیات، کاربران فناوری اطلاعات را هدف قرار می دهد","type":"mallware","content":"کاربران مکزیکی حداقل از نوامبر 2023 برای توزیع یک بدافزار ویندوزی که قبلاً مستند نشده بود به نام TimbreStealer هدف فریب های فیشینگ با مضمون مالیاتی قرار گرفته اند.\r\n\r\nCisco Talos که این فعالیت را کشف کرد، نویسندگان را ماهر توصیف کرد و گفت: «بازیگر تهدید قبلاً از تاکتیک‌ها، تکنیک‌ها و رویه‌های مشابه (TTP) برای توزیع یک تروجان بانکی معروف به Mispadu در سپتامبر 2023 استفاده کرده است.\r\n\r\nعلاوه بر استفاده از تکنیک های پیچیده مبهم سازی برای دور زدن تشخیص و اطمینان از پایداری، کمپین فیشینگ از geofencing برای جدا کردن کاربران در مکزیک استفاده می کند و در صورت تماس با سایت های بارگذاری از مکان های دیگر، یک فایل PDF خالی بی ضرر را به جای فایل مخرب برمی گرداند.\r\n\r\nبرخی از مانورهای فرار قابل توجه شامل استفاده از بارگذارهای سفارشی و تماس های مستقیم سیستم برای دور زدن نظارت API معمولی، علاوه بر استفاده از Heaven's Gate برای اجرای کد 64 بیتی در یک فرآیند 32 بیتی است، رویکردی که اخیراً توسط HijackLoader نیز اتخاذ شده است.\r\n\r\nامنیت سایبری\r\nاین بدافزار با چندین ماژول تعبیه‌شده برای هماهنگ‌سازی، رمزگشایی و محافظت از باینری اصلی ارائه می‌شود، در حالی که یک سری بررسی‌ها را نیز انجام می‌دهد تا مشخص کند که آیا یک محیط sandbox را اجرا می‌کند، زبان سیستم روسی نیست و منطقه زمانی در آمریکای لاتین است. منطقه\r\n\r\nماژول ارکستراتور همچنین به دنبال فایل‌ها و کلیدهای رجیستری می‌گردد تا دوبار بررسی کند که دستگاه قبلاً آلوده نشده است، قبل از راه‌اندازی یک مؤلفه نصب کننده باری که یک فایل فریبنده خوش‌خیم را به کاربر نمایش می‌دهد، زیرا در نهایت باعث اجرای بار اولیه TimbreStealer می‌شود. .\r\n\r\nمحموله به گونه ای طراحی شده است که طیف وسیعی از داده ها را جمع آوری کند، از جمله اطلاعات اعتبار از پوشه های مختلف، ابرداده های سیستم، و URL های مورد دسترسی، جستجوی فایل های مطابق با پسوندهای خاص، و تأیید وجود نرم افزار دسکتاپ از راه دور.\r\n\r\nبدافزار TimbreStealer\r\nCisco Talos گفت که با کمپین اسپم Mispadu که در سپتامبر 2023 مشاهده شد، همپوشانی هایی را شناسایی کرده است، اگرچه صنایع هدف TimbreStealer متنوع و با تمرکز بر بخش های تولید و حمل و نقل است.\r\n\r\nاین افشاگری در بحبوحه ظهور نسخه جدیدی از سارق اطلاعات دیگر به نام Atomic (معروف به AMOS) صورت می‌گیرد که قادر به جمع‌آوری داده‌ها از سیستم‌های macOS اپل مانند رمزهای عبور حساب کاربری محلی، اعتبار از مرورگرهای موزیلا فایرفاکس و کرومیوم، کیف پول کریپتو است. اطلاعات و فایل‌های مورد علاقه، با استفاده از ترکیب غیرعادی کد پایتون و اپل اسکریپت.\r\n\r\nامنیت سایبری\r\nAndrei Lapusneanu، محقق Bitdefender، گفت: «نوع جدید حذف می‌شود و از یک اسکریپت پایتون برای مخفی ماندن استفاده می‌کند.\r\n\r\n\r\nهمچنین به دنبال ظهور خانواده‌های بدافزار سرقت‌کننده جدیدی مانند XSSLite است که به عنوان بخشی از یک مسابقه توسعه بدافزار به میزبانی انجمن XSS منتشر شد، حتی زمانی که گونه‌های موجود مانند Agent Tesla و Pony (معروف به Fareit یا Siplog) همچنان مورد استفاده قرار می‌گرفتند. سرقت اطلاعات و فروش بعدی در بازارهای سیاهههای مربوط به دزدان مانند Exodus.","id":"65.62745178874134","date":"2 / 3 / 2024","refrence":"The Hacker News / NewsRoom","__v":0},{"pic":{"picName":"NPM","picUrl":"https://iran-hackersnews.info/NPM.jpg"},"_id":"662cc90014123f8c650140b5","title":"بسته های جعلی npm که برای فریب توسعه دهندگان نرم افزار برای نصب بدافزار استفاده می شود","type":"mallware","content":"یک کمپین مهندسی اجتماعی در حال انجام، توسعه‌دهندگان نرم‌افزار را با بسته‌های جعلی npm تحت عنوان یک مصاحبه شغلی هدف قرار می‌دهد تا آنها را فریب دهد تا یک درب پشتی پایتون را دانلود کنند.\r\n\r\nشرکت امنیت سایبری Securonix این فعالیت را تحت نام DEV#POPPER دنبال می‌کند و آن را به عوامل تهدید کره شمالی مرتبط می‌کند.\r\n\r\nمحققین امنیتی دن ایوزویک، تیم پک و اولگ کولسنیکوف می‌گویند: «در طول این مصاحبه‌های تقلبی، اغلب از توسعه‌دهندگان خواسته می‌شود کارهایی را انجام دهند که شامل دانلود و اجرای نرم‌افزار از منابعی مانند GitHub است که به نظر قانونی می‌رسد. \"این نرم افزار حاوی یک بار مخرب Node JS بود که پس از اجرا، سیستم توسعه دهنده را به خطر انداخت.\"\r\n\r\nامنیت سایبری\r\nجزئیات این کمپین برای اولین بار در اواخر نوامبر 2023 ظاهر شد، زمانی که واحد شبکه های Palo Alto 42 یک خوشه فعالیت به نام مصاحبه مسری را شرح داد که در آن عوامل تهدید به عنوان کارفرمایان ظاهر می شوند تا توسعه دهندگان نرم افزار را برای نصب بدافزارهایی مانند BeaverTail و InvisibleFerret از طریق فرآیند مصاحبه جذب کنند.\r\n\r\nسپس در اوایل ماه فوریه، شرکت امنیتی زنجیره تامین نرم‌افزار Phylum مجموعه‌ای از بسته‌های مخرب را در رجیستری npm کشف کرد که خانواده‌های بدافزار مشابهی را برای جمع‌آوری اطلاعات حساس از سیستم‌های توسعه‌دهنده در معرض خطر تحویل می‌داد.\r\n\r\nشایان ذکر است که Contagious Interview با Operation Dream Job (معروف به DeathNote یا NukeSped) متفاوت است، و واحد 42 به Hacker News گفت که اولی \"بر روی هدف قرار دادن توسعه دهندگان، عمدتاً از طریق هویت های جعلی در پورتال های شغلی آزاد، و مراحل بعدی شامل استفاده از ابزارهای توسعه دهنده و بسته های npm است که منجر به [...] BeaverTail و InvisibleFerret می شود.\"\r\n\r\nOperation Dream Job که با گروه پرکار لازاروس از کره شمالی مرتبط است، یک کمپین تهاجمی طولانی مدت است که افراد حرفه‌ای را که در بخش‌های مختلف مانند هوافضا، ارز دیجیتال، دفاع و سایر بخش‌ها مشغول به کار هستند، فایل‌های مخرب را به عنوان پیشنهادهای شغلی برای توزیع بدافزار ارسال می‌کند.\r\n\r\nاولین بار توسط شرکت امنیت سایبری اسرائیلی ClearSky در آغاز سال 2020 کشف شد، و همچنین با دو خوشه دیگر لازاروس معروف به عملیات In(ter)ception و عملیات ستاره شمالی همپوشانی دارد.\r\n\r\nزنجیره حمله که توسط Securonix شرح داده شده است با یک آرشیو ZIP میزبانی شده در GitHub شروع می شود که احتمالاً به عنوان بخشی از مصاحبه به هدف ارسال می شود. در داخل فایل یک ماژول npm به ظاهر بی‌ضرر وجود دارد که یک فایل جاوا اسکریپت مخرب با کد BeaverTail را در خود جای داده است که به عنوان یک دزد اطلاعات و یک لودر برای یک درب پشتی پایتون به نام InvisibleFerret که از یک سرور راه دور بازیابی می‌شود، عمل می‌کند.\r\n\r\nامنیت سایبری\r\nایمپلنت علاوه بر جمع‌آوری اطلاعات سیستم، قادر به اجرای دستور، شمارش و برداشت فایل‌ها و ثبت بر روی کلیپ بورد و ضربه زدن به کلید است.\r\n\r\nاین توسعه نشانه آن است که بازیگران تهدید کننده کره شمالی همچنان به ساخت مجموعه ای از تسلیحات برای زرادخانه حملات سایبری خود ادامه می دهند، و به طور مداوم تجهیزات تجاری خود را با توانایی های بهبود یافته برای پنهان کردن اقدامات خود و ترکیب در سیستم ها و شبکه های میزبان، به روز رسانی می کنند، نه اینکه به حذف داده ها اشاره کنیم. سازش را به سود مالی تبدیل کنید\r\n\r\nمحققان Securonix می‌گویند: «وقتی صحبت از حملاتی می‌شود که از مهندسی اجتماعی سرچشمه می‌گیرند، حفظ یک ذهنیت متمرکز بر امنیت، به ویژه در موقعیت‌های شدید و استرس‌زا مانند مصاحبه‌های شغلی بسیار مهم است.\r\n\r\nمهاجمان پشت کمپین‌های DEV#POPPER از این سوء استفاده می‌کنند، زیرا می‌دانند که فرد طرف مقابل در وضعیتی بسیار پریشان و آسیب‌پذیرتر است.»","id":"1.6672421073787413","date":"شنبه - ۱ اردیبهشت ۱۴۰۳","refrence":"NewsRoom","__v":0}]

part 'search_result_model.g.dart';


@JsonSerializable()
class SearchResultModel {
  SearchResultModel({
    this.searchTitle,
    this.searchResault,
  });

  SearchResultModel.fromJson(dynamic json) {
    searchTitle = json['searchTitle'];
    if (json['searchResault'] != null) {
      searchResault = [];
      json['searchResault'].forEach((v) {
        searchResault?.add(NewsDetailsModel.fromJson(v));
      });
    }
  }

  String? searchTitle;
  List<NewsDetailsModel>? searchResault;


}
