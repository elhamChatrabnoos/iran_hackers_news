import 'package:get/get.dart';
import 'package:hackers_news/app/routers/route_names.dart';
import 'package:hackers_news/features/home/views/pages/main_page.dart';
import 'package:hackers_news/features/home/views/pages/privacy_and_policy_page.dart';
import 'package:hackers_news/features/home/views/pages/search_page.dart';
import 'package:hackers_news/features/news_details/views/pages/news_details_page.dart';

import '../../features/news_details/views/pages/article_details_page.dart';

class RoutesPages {
  static final List<GetPage> routes = [
    GetPage(
      name: RoutesName.mainPage,
      page: () => MainPage(),
    ),
    GetPage(
        name: RoutesName.newsDetailsPage,
        page: () {
          final args = Get.arguments as Map<String, dynamic>;
          final newsId = args['newsId'];
          return NewsDetailsPage(
            newsId: newsId,
          );
        }),
    GetPage(
        name: RoutesName.articleDetailsPage,
        page: () {
          final args = Get.arguments as Map<String, dynamic>;
          final articleId = args['articleId'];
          return ArticleDetailsPage(
            articleId: articleId,
          );
        }),
    GetPage(
      name: RoutesName.searchPage,
      page: () => const SearchPage(),
    ),
    GetPage(
      name: RoutesName.privacyAndPolicyPage,
      page: () => const PrivacyAndPolicyPage(),
    ),
  ];
}
