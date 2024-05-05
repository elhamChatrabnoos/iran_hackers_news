import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/features/news_details/controllers/details_controller.dart';
import 'package:hackers_news/features/news_details/views/widgets/details_page_header.dart';
import 'package:hackers_news/features/news_details/views/widgets/details_page_loading.dart';
import 'package:hackers_news/features/news_details/views/widgets/news_details_body.dart';

class NewsDetailsPage extends GetView<DetailsController> {
  const NewsDetailsPage({required this.newsId, super.key});

  final String newsId;

  @override
  Widget build(BuildContext context) {
    controller.getNewsDetails(newsId);
    return Scaffold(
      body: FutureBuilder<DetailsController>(
        future: Get.putAsync<DetailsController>(
          () async {
            await Future.delayed(const Duration(seconds: 1));
            return DetailsController();
          },
          tag: newsId.toString(),
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const DetailsPageLoading();
            case ConnectionState.done:
              return CustomScrollView(
                slivers: [
                  DetailsPageHeader(
                      isArticleDetails: false,
                      imageUrl: controller.newsDetails.value.pic != null
                          ? controller.newsDetails.value.pic!.picUrl ?? ''
                          : ''),
                  const NewsDetailsBody(),
                ],
              );
            default:
              return Container();
          }
        },
      ),
    );
  }
}
