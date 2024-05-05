import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/app/widgets/custom_image_network.dart';
import 'package:hackers_news/features/news_details/controllers/details_controller.dart';
import 'package:share_plus/share_plus.dart';

class DetailsPageHeader extends GetView<DetailsController> {
  const DetailsPageHeader({
    super.key,
    required this.isArticleDetails,
    required this.imageUrl,
  });

  final String imageUrl;
  final bool isArticleDetails;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      surfaceTintColor: AppTheme.onPrimary,
      backgroundColor: AppTheme.secondary,
      expandedHeight: 400,
      pinned: true,
      title: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () => Get.back(),
                splashColor: Colors.transparent,
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  String url = '';
                  if (isArticleDetails) {
                    url =
                        'https://iran-hackersnews.info/content/artichet/${controller.articleDetails.value.id}';
                  } else {
                    url =
                        'https://iran-hackersnews.info/content/${controller.newsDetails.value.id}';
                  }
                  Share.share(url);
                },
                child: const Icon(
                  Icons.share,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand,
          children: [
            CustomImageNetwork(url: imageUrl),
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: 250,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      colors: [
                        AppTheme.primaryContainer,
                        Colors.transparent,
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
