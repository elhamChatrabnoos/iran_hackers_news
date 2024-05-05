import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_size.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/app/routers/route_names.dart';
import 'package:hackers_news/app/widgets/custom_image_network.dart';
import 'package:hackers_news/app/widgets/custom_text.dart';
import 'package:hackers_news/features/home/models/article_model.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (articleModel.id != null) {
          Get.toNamed(RoutesName.articleDetailsPage, arguments: {
            'articleId': articleModel.id,
          });
        }
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: AppTheme.onPrimary,
        ),
        margin: const EdgeInsets.all(5),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: CustomImageNetwork(url: articleModel.picUrl ?? ''),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 10, left: 5, bottom: 5, top: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: articleModel.title ?? '',
                      fontWeight: FontWeight.w700,
                      fontSize: AppSize.medium_1,
                      maxLine: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: AppSize.small_2),
                    CustomText(
                      text: articleModel.date ?? '',
                      fontWeight: FontWeight.w700,
                      fontColor: AppTheme.onSecondary,
                      fontSize: AppSize.small_1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
