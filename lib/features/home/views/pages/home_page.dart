import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/features/home/controllers/home_controller.dart';

import '../widgets/body/home_page_body.dart';
import '../widgets/header/home_page_header.dart';
import '../widgets/home_page_loading.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.firstTimeNewsLoaded.value
          ? CustomScrollView(
              controller: controller.scrollController,
              slivers: const [
                HomePageHeader(),
                HomePageBody(),
              ],
            )
          : const HomePageLoading(),
    );
  }
}
