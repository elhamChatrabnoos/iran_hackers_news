import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/features/news_details/controllers/details_controller.dart';
import 'package:hackers_news/features/news_details/views/widgets/article_details_body.dart';
import 'package:hackers_news/features/news_details/views/widgets/details_page_header.dart';
import 'package:hackers_news/features/news_details/views/widgets/details_page_loading.dart';

class ArticleDetailsPage extends GetView<DetailsController> {
  const ArticleDetailsPage({required this.articleId, super.key});

  final String articleId;

  @override
  Widget build(BuildContext context) {
    controller.getArticleContent(articleId);
    return Scaffold(
      body: FutureBuilder<DetailsController>(
        future: Get.putAsync<DetailsController>(
          () async {
            await Future.delayed(const Duration(seconds: 1));
            return DetailsController();
          },
          tag: articleId.toString(),
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const DetailsPageLoading();
            case ConnectionState.done:
              return CustomScrollView(
                slivers: [
                  DetailsPageHeader(
                    imageUrl: controller.articleDetails.value.pic!.picUrl ?? '',
                    isArticleDetails: true,
                  ),
                  const ArticleDetailsBody(),
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
