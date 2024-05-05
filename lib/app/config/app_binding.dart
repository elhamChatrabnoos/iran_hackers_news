import 'package:get/get.dart';
import 'package:hackers_news/features/home/controllers/home_controller.dart';
import 'package:hackers_news/features/home/controllers/search_page_controller.dart';
import 'package:hackers_news/features/news_details/controllers/details_controller.dart';

class AppBinding extends Bindings {

  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => DetailsController(), fenix: true);
    Get.lazyPut(() => SearchPageController(), fenix: true);
  }


}
