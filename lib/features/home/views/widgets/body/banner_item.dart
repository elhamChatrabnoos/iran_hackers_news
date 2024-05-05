import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_assets.dart';
import 'package:hackers_news/app/routers/route_names.dart';
import 'package:hackers_news/app/widgets/custom_image_network.dart';
import 'package:hackers_news/features/home/models/news_model.dart';

import '../../../../../app/config/app_size.dart';
import '../../../../../app/config/app_theme.dart';
import '../../../../../app/widgets/custom_text.dart';

class BannerItem extends StatelessWidget {
  const BannerItem({super.key, required this.newsModel});

  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(RoutesName.newsDetailsPage,
            arguments: {'newsId': newsModel.id});
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              child: CustomImageNetwork(
                url: newsModel.picUrl ?? '',
                width: 400,
                height: 300,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topRight,
                      colors: [
                        AppTheme.onSecondary,
                        Colors.transparent,
                      ]),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: AppTheme.onSecondary,
                ),
                child: CustomText(
                  text: newsModel.title ?? '',
                  fontWeight: FontWeight.bold,
                  fontSize: AppSize.medium_1,
                  fontColor: AppTheme.secondary,
                  maxLine: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
