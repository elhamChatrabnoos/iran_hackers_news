import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_binding.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/app/routers/route_names.dart';
import 'package:hackers_news/features/home/views/pages/main_page.dart';

import 'app/routers/route_pages.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();
  late AppLinks _appLinks;
  StreamSubscription<Uri>? _linkSubscription;

  @override
  void initState() {
    super.initState();
    initDeepLinks();
  }

  @override
  void dispose() {
    _linkSubscription?.cancel();
    super.dispose();
  }

  Future<void> initDeepLinks() async {
    _appLinks = AppLinks();

    final appLink = await _appLinks.getInitialAppLink();
    if (appLink != null) {
      openAppLink(appLink);
    }

    _linkSubscription = _appLinks.uriLinkStream.listen((uri) {
      openAppLink(uri);
    });
  }

  void openAppLink(Uri uri) {
    if(uri.path.contains('artichet')){
      Get.toNamed(RoutesName.articleDetailsPage,
          preventDuplicates: false, arguments: {"articleId": uri.pathSegments.last});
    }
    else{
      Get.toNamed(RoutesName.newsDetailsPage,
          preventDuplicates: false, arguments: {"newsId": uri.pathSegments.last});
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      getPages: RoutesPages.routes,
      locale: const Locale("fa", "IR"),
      theme: ThemeData(
        fontFamily: 'IRANSans',
        colorScheme: ColorScheme.fromSeed(seedColor: AppTheme.primary),
        useMaterial3: true,
      ),
      home: MainPage(),
    );
  }
}
