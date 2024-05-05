import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../app/config/app_size.dart';
import '../../../../app/routers/route_names.dart';
import '../../../../app/widgets/custom_image_network.dart';
import '../../../../app/widgets/custom_text.dart';
import '../../../home/models/article_model.dart';

class RelatedArticleItem extends StatelessWidget {
  const RelatedArticleItem({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (articleModel.id != null) {
          Get.toNamed(
            RoutesName.articleDetailsPage,
            arguments: {
              'articleId': articleModel.id,
            },
            preventDuplicates: false,
          );
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CustomImageNetwork(
                url: articleModel.picUrl ?? '',
                width: 250,
                height: 150,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 200,
              child: CustomText(
                text: articleModel.title ?? '',
                fontWeight: FontWeight.w700,
                fontSize: AppSize.medium_2,
                maxLine: 2,
              ),
            ),
            const Spacer(),
            CustomText(
              text: articleModel.date ?? '',
              fontSize: AppSize.small_2,
              maxLine: 2,
            ),
          ],
        ),
      ),
    );
  }
}
