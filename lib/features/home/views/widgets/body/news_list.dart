import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/features/home/controllers/home_controller.dart';

import '../news_item_loading.dart';
import 'news_item.dart';

class NewsList extends GetView<HomeController> {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.itemListLoading.value
          ? const NewsItemLoading()
          : controller.firstTimeNewsLoaded.value
              ? Column(
                  children: [
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: controller.newsList.length,
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return NewsItem(newsModel: controller.newsList[index]);
                      },
                    ),
                    controller.moreNewsLoading.value
                        ? const CircularProgressIndicator()
                        : const SizedBox()
                  ],
                )
              : const SizedBox(),
    );
  }
}
