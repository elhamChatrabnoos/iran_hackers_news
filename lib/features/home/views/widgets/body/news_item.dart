import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_size.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/app/routers/route_names.dart';
import 'package:hackers_news/app/widgets/custom_image_network.dart';
import 'package:hackers_news/app/widgets/custom_text.dart';
import 'package:hackers_news/features/home/models/news_model.dart';
import 'package:hackers_news/features/news_details/views/pages/news_details_page.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.newsModel});

  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (newsModel.id != null) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    NewsDetailsPage(newsId: newsModel.id ?? ''),
              ));
          // Get.toNamed(RoutesName.newsDetailsPage, arguments: {
          //   'newsId': newsModel.id,
          // });
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
                child: CustomImageNetwork(url: newsModel.picUrl ?? ''),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 10, left: 5, bottom: 5, top: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(
                      text: newsModel.title ?? '',
                      fontWeight: FontWeight.w700,
                      fontSize: AppSize.medium_1,
                      maxLine: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: AppSize.small_2),
                    CustomText(
                      text: newsModel.date ?? '',
                      fontWeight: FontWeight.w700,
                      fontColor: AppTheme.onSecondary,
                      fontSize: AppSize.small_2,
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
