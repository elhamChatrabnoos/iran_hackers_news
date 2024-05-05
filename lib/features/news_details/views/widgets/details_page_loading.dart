import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../app/widgets/sub_loading_widget.dart';

class DetailsPageLoading extends StatelessWidget {
  const DetailsPageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Shimmer.fromColors(
          baseColor: AppTheme.onPrimary,
          highlightColor: AppTheme.primaryContainer,
          child: Column(
            children: [
              Stack(children: [
                SubLoadingWidget(
                  width: Get.width,
                  height: 300,
                  radius: 0,
                  color: AppTheme.onPrimary,
                ),
                Column(
                  children: [
                    const SizedBox(height: 50),
                    Row(
                      children: [
                        _circularLoading(),
                        const Spacer(),
                        // _circularLoading(),
                        _circularLoading(),
                      ],
                    ),
                  ],
                ),
              ]),
              const SizedBox(height: 12),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubLoadingWidget(height: 20, color: AppTheme.tertiary),
                    SizedBox(height: 12),
                    SubLoadingWidget(height: 10, color: AppTheme.tertiary, width: 200),
                    SizedBox(height: 12),
                    SubLoadingWidget(height: 10, color: AppTheme.tertiary, width: 200),
                    SizedBox(height: 12),
                    SubLoadingWidget(height: 10, color: AppTheme.tertiary, width: 200),
                    SizedBox(height: 50),
                    SubLoadingWidget(height: 25, color: AppTheme.tertiary, width: 100),
                    SizedBox(height: 12),
                    SubLoadingWidget(height: 10, color: AppTheme.tertiary),
                    SizedBox(height: 12),
                    SubLoadingWidget(height: 10, color: AppTheme.tertiary),
                    SizedBox(height: 12),
                    SubLoadingWidget(height: 10, color: AppTheme.tertiary),
                    SizedBox(height: 12),
                    SubLoadingWidget(height: 10, color: AppTheme.tertiary),
                    SizedBox(height: 12),
                    SubLoadingWidget(height: 10, color: AppTheme.tertiary),
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
      width: 70,
      radius: 20,
    ),
  );

  Widget _rectangleLoading() {
    return const Padding(
      padding: EdgeInsets.all(4),
      child: SubLoadingWidget(
        height: 50,
        width: 50,
        radius: 5,
      ),
    );
  }

  Widget _circularLoading() {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SubLoadingWidget(
        height: 40,
        width: 40,
        radius: 100,
        color: AppTheme.primaryContainer,
      ),
    );
  }
}
