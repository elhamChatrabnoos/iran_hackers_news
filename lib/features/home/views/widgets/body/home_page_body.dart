import 'package:flutter/material.dart';
import 'package:hackers_news/features/home/views/widgets/body/banner_part.dart';

import 'items_list.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BannerPart(),
            ItemsList(),
          ],
        ),
      ),
    );
  }
}
