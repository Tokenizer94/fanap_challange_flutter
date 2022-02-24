import 'package:fanap_challange_flutter/src/presentation/components/responsive_decorator_widget.dart';
import 'package:fanap_challange_flutter/src/presentation/home/home_view_mobile.dart';
import 'package:fanap_challange_flutter/src/presentation/home/home_view_tablet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: Remove hardcoded text
    const String _appbarTitle = 'Home';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(_appbarTitle),
      ),
      body: const ResponsiveDecoratorWidget(
        mobile: HomeViewMobile(),
        tablet: HomeViewTablet(),
        desktop: HomeViewTablet(),
      ),
    );
  }
}
