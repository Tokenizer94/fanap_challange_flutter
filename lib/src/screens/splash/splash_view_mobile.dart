import 'package:fanap_challange_flutter/src/core/constants/png_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewMobile extends StatelessWidget {
  const SplashViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        PngAssets.splashImage,
        fit: BoxFit.cover,
        width: 0.3.sw,
      ),
    );
  }
}
