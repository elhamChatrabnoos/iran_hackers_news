import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_size.dart';
import 'package:hackers_news/app/config/app_texts.dart';
import 'package:hackers_news/features/home/controllers/home_controller.dart';
import 'package:hackers_news/features/home/models/news_model.dart';

import '../../../../../app/widgets/custom_text.dart';
import 'banner_item.dart';

class BannerPart extends GetView<HomeController> {
  const BannerPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: AppText.importantNews,
          fontWeight: FontWeight.bold,
          paddingTop: 5,
          paddingRight: 5,
          fontSize: AppSize.medium_2,
        ),
        Obx(
          () => controller.trendNewsLoaded.value ? CarouselSlider.builder(
            options: CarouselOptions(
              aspectRatio: 16 / 8,
              viewportFraction: 0.8,
              enlargeCenterPage: true,
              enlargeFactor: 0.25,
              autoPlay: true,
              scrollDirection: Axis.horizontal,
            ),
            itemCount: controller.trendNewsList.length > 5 ? 5 : controller.trendNewsList.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    BannerItem(newsModel: controller.trendNewsList[itemIndex]),
          ) : const SizedBox(),
        )
      ],
    );
  }
}
