import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/app/routers/route_names.dart';
import 'package:hackers_news/app/widgets/logo_widget.dart';
import 'package:hackers_news/features/home/views/widgets/header/date_widget.dart';
import 'package:hackers_news/features/home/views/widgets/header/header_background.dart';

import '../../../../../app/widgets/header_search.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: AppTheme.onSecondary,
      automaticallyImplyLeading: false,
      expandedHeight: 300,
      title: const Row(
        children: [
          DateWidget(),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            const HeaderBackground(),
            const Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: LogoWidget(),
            ),
            Positioned(
              left: 5,
              right: 5,
              bottom: 0,
              child: HeaderSearchField(
                onTap: () => Get.toNamed(RoutesName.searchPage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
