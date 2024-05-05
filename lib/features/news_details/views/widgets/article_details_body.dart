import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_size.dart';
import 'package:hackers_news/app/config/app_texts.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/app/widgets/custom_text.dart';
import 'package:hackers_news/features/news_details/controllers/details_controller.dart';

import 'related_articles.dart';

class ArticleDetailsBody extends GetView<DetailsController> {
  const ArticleDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomText(
              text: controller.articleDetails.value.title ?? '',
              fontSize: AppSize.large_1,
              fontWeight: FontWeight.w700,
              maxLine: 2,
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Icon(Icons.date_range_outlined, color: AppTheme.primary),
                const SizedBox(width: 5),
                CustomText(
                  text: controller.articleDetails.value.date ?? '',
                  fontSize: AppSize.small_2,
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                const Icon(Icons.newspaper, color: AppTheme.primary),
                const SizedBox(width: 5),
                CustomText(
                  text: controller.articleDetails.value.refrence ?? '',
                  fontSize: AppSize.small_2,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const CustomText(
              text: AppText.description,
              fontSize: AppSize.large_1,
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 5),
            CustomText(
              text: controller.articleDetails.value.content ?? '',
              fontSize: AppSize.medium_1,
              textAlign: TextAlign.justify,
              maxLine: 50,
            ),
            const RelatedArticles(),
          ],
        ),
      ),
    );
  }
}
