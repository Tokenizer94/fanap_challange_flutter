import 'package:fanap_challange_flutter/src/presentation/components/responsive_decorator_widget.dart';
import 'package:fanap_challange_flutter/src/presentation/home/home_page.dart';
import 'package:fanap_challange_flutter/src/presentation/splash/splash_view_mobile.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _routeAfterWhile(context);
    return const Scaffold(
      body: ResponsiveDecoratorWidget(
        mobile: SplashViewMobile(),
        tablet: SplashViewMobile(),
        desktop: SplashViewMobile(),
      ),
    );
  }

  /// Some fake delay and then route to the next page
  void _routeAfterWhile(BuildContext context) {
    /// This make sure that this page build completed
    WidgetsBinding.instance!.addPostFrameCallback(
      (_) async {
        Future.delayed(const Duration(milliseconds: 1000)).then(
          (value) => Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (_) => const HomePage()),
          ),
        );
      },
    );
  }
}
