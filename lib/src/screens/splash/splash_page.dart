import 'package:fanap_challange_flutter/src/components/responsive_decorator_widget.dart';
import 'package:fanap_challange_flutter/src/screens/splash/splash_view_mobile.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveDecoratorWidget(
        mobile: SplashViewMobile(),
        tablet: SplashViewMobile(),
        desktop: SplashViewMobile(),
      ),
    );
  }
}
