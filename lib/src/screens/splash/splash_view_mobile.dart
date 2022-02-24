import 'package:fanap_challange_flutter/src/config/png_assets.dart';
import 'package:fanap_challange_flutter/src/screens/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashViewMobile extends StatelessWidget {
  const SplashViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _routeAfterWhile(context);
    return Center(
      child: Image.asset(
        PngAssets.splashImage,
        fit: BoxFit.cover,
        width: 0.3.sw,
      ),
    );
  }

  /// Some fake delay and then route to the next page
  void _routeAfterWhile(BuildContext context) {
    /// This make sure that this page build completed
    WidgetsBinding.instance!.addPostFrameCallback(
      (_) async {
        Future.delayed(const Duration(milliseconds: 2000)).then(
          (value) => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const HomePage()),
          ),
        );
      },
    );
  }
}
