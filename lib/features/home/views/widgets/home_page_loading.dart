import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/features/home/views/widgets/news_item_loading.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../app/widgets/sub_loading_widget.dart';

class HomePageLoading extends StatelessWidget {
  const HomePageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Shimmer.fromColors(
        baseColor: AppTheme.onPrimary,
        highlightColor: AppTheme.primaryContainer,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                SubLoadingWidget(
                  width: Get.width,
                  height: 400,
                  radius: 0,
                  color: AppTheme.onPrimary,
                ),
                const Column(
                  children: [
                    SizedBox(height: 50),
                    Row(
                      children: [
                        SizedBox(width: 15),
                        SubLoadingWidget(
                          height: 30,
                          width: 200,
                          color: AppTheme.tertiary,
                        ),
                        Spacer(),
                        SubLoadingWidget(
                          height: 30,
                          width: 110,
                          color: AppTheme.tertiary,
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                    SizedBox(height: 50),
                    SubLoadingWidget(
                      height: 180,
                      width: 250,
                      radius: 5,
                      color: AppTheme.tertiary,
                    ),
                    SizedBox(height: 30),
                    SubLoadingWidget(
                      height: 30,
                      width: 300,
                      color: AppTheme.tertiary,
                    ),
                  ],
                ),
              ]),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SubLoadingWidget(
                      height: 20,
                      width: 200,
                    ),
                    const SizedBox(height: 12),
                    const SubLoadingWidget(
                      height: 150,
                      width: 300,
                      radius: 30,
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        _ovalLoading(),
                        _ovalLoading(),
                        _ovalLoading(),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const NewsItemLoading(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ovalLoading() => const Padding(
        padding: EdgeInsets.only(top: 8.0, bottom: 8, right: 8),
        child: SubLoadingWidget(
          height: 30,
          width: 100,
          radius: 20,
        ),
      );
}
