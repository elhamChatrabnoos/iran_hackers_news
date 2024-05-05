import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../app/config/app_theme.dart';
import '../../../../app/widgets/sub_loading_widget.dart';

class NewsItemLoading extends StatelessWidget {
  const NewsItemLoading({super.key});


  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppTheme.onPrimary,
      highlightColor: AppTheme.primaryContainer,
      child: Column(
        children: [
          item(),
          const SizedBox(height: 12),
          item(),
          const SizedBox(height: 12),
          item(),
          const SizedBox(height: 12),
          item(),
          const SizedBox(height: 12),
          item(),
          const SizedBox(height: 12),
          item(),
          const SizedBox(height: 12),
          item(),
        ],
      ),
    );
  }

  Widget item(){
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(4),
          child: SubLoadingWidget(
            height: 100,
            width: 100,
            radius: 5,
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SubLoadingWidget(
              height: 15,
              width: 200,
            ),
            SizedBox(height: 10),
            SubLoadingWidget(
              height: 15,
              width: 200,
            ),
            SizedBox(height: 10),
            SubLoadingWidget(
              height: 20,
              width: 100,
            ),
          ],
        ),
      ],
    );
  }
}
