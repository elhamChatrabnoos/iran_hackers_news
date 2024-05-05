import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/features/home/controllers/home_controller.dart';
import 'package:hackers_news/features/home/views/widgets/body/articles_list.dart';
import 'package:hackers_news/features/home/views/widgets/body/categories_part.dart';
import 'package:hackers_news/features/home/views/widgets/body/news_list.dart';

class ItemsList extends GetView<HomeController> {
  const ItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 5),
        SizedBox(height: 50, child: CategoriesPart()),
        SizedBox(height: 5),
        NewsList(),
      ],
    );
  }
}
