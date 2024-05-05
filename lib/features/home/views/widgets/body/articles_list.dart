import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/features/home/controllers/home_controller.dart';
import 'package:hackers_news/features/home/views/widgets/body/article_item.dart';
import 'package:hackers_news/features/home/views/widgets/body/categories_part.dart';
import 'package:hackers_news/features/home/views/widgets/body/news_item.dart';
import 'package:hackers_news/features/home/views/widgets/news_item_loading.dart';

class ArticlesList extends GetView<HomeController> {
  const ArticlesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return controller.itemListLoading.value
            ? const NewsItemLoading()
            : ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.articlesList.length,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ArticleItem(
                      articleModel: controller.articlesList[index]);
                },
              );
      },
    );
  }
}
