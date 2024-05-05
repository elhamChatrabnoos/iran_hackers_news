import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_texts.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/features/home/controllers/home_controller.dart';
import 'package:hackers_news/features/home/views/pages/articles_page.dart';
import 'package:hackers_news/features/home/views/pages/home_page.dart';
import 'package:hackers_news/features/home/views/pages/register_email_page.dart';

class MainPage extends GetView<HomeController> {
  MainPage({super.key});

  List<Widget> pages = [
    const HomePage(),
    const ArticlesPage(),
    const RegisterEmailPage(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        bottomNavigationBar: Obx(
          () =>  PopScope(
            canPop: controller.pageIndex.value == 0,
            onPopInvoked: (didPop) async{
              if(controller.pageIndex.value != 0){
                controller.pageIndex.value = 0;
              }
            },
            child: BottomNavigationBar(
              currentIndex: controller.pageIndex.value,
                onTap: (value) {
                  controller.pageIndex(value);
                },
                selectedItemColor: AppTheme.primary,
                items: const [
                  BottomNavigationBarItem(
                    label: AppText.home,
                    icon: Icon(Icons.home_outlined, size: 30,),
                    activeIcon: Icon(Icons.home, size: 30,),
                  ),
                  BottomNavigationBarItem(
                    label: AppText.articles,
                    icon: Icon(Icons.article_outlined),
                    activeIcon: Icon(Icons.article),
                  ),
                  BottomNavigationBarItem(
                    label: AppText.email,
                    icon: Icon(Icons.email_outlined),
                    activeIcon: Icon(Icons.email),
                  ),
                ]),
          ),
        ),
        body: Obx(() => pages[controller.pageIndex.value]));
  }
}
