import 'package:flutter/material.dart';

class ResponsiveDecoratorWidget extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;

  const ResponsiveDecoratorWidget({
    Key? key,
    @required this.mobile,
    @required this.tablet,
    @required this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      /// If our width is more than 1100 then we consider it a desktop
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1100) {
          return desktop ?? Container();
        }

        /// If width is less then 1100 and more then 650 we consider it as tablet
        else if (constraints.maxWidth >= 650) {
          return tablet ?? Container();
        }

        /// Or less then that we called it mobile
        else {
          return mobile ?? Container();
        }
      },
    );
  }
}
