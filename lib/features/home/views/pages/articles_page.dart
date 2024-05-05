import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_texts.dart';
import 'package:hackers_news/app/widgets/custom_app_bar.dart';
import 'package:hackers_news/features/home/controllers/home_controller.dart';
import 'package:hackers_news/features/home/views/widgets/body/articles_list.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (Get.find<HomeController>().articlesList.isEmpty) {
      Get.find<HomeController>().getArticles();
    }
    return const CustomScrollView(
      slivers: [
        CustomAppBar(title: AppText.articles),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ArticlesList(),
          ),
        )
      ],
    );
  }
}
