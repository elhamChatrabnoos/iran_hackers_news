import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_size.dart';
import 'package:hackers_news/app/config/app_texts.dart';
import 'package:hackers_news/app/widgets/custom_text.dart';
import 'package:hackers_news/features/news_details/controllers/details_controller.dart';
import 'package:hackers_news/features/news_details/views/widgets/related_article_item.dart';

class RelatedArticles extends GetView<DetailsController> {
  const RelatedArticles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const CustomText(
          text: AppText.relatedArticle,
          fontWeight: FontWeight.w700,
          fontSize: AppSize.medium_2,
        ),
        const SizedBox(height: 5),
        SizedBox(
          height: 250,
          child: Obx(
            () => ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: controller.relatedArticleList.length > 4
                  ? 4
                  : controller.relatedArticleList.length,
              itemBuilder: (context, index) {
                return RelatedArticleItem(
                  articleModel: controller.relatedArticleList[index],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
