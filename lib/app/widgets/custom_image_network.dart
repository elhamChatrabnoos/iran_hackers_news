import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_assets.dart';

import '../config/app_theme.dart';

class CustomImageNetwork extends StatelessWidget {
  const CustomImageNetwork(
      {super.key, required this.url, this.height, this.width});

  final String url;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      imageUrl: url,
      width: width,
      fit: BoxFit.cover,
      placeholder: (context, url) => _placeHolder(),
      errorWidget: (context, url, error) => _placeHolder(),
    );
  }

  Widget _placeHolder() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(AppAssets.lightLogo),
    );
  }
}
