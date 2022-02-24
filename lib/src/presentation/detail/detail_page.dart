import 'package:fanap_challange_flutter/src/presentation/components/responsive_decorator_widget.dart';
import 'package:fanap_challange_flutter/src/presentation/detail/detail_view_mobile.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: Remove hardcoded text
    const String _appbarTitle = 'Detail';
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(_appbarTitle),
      ),
      body: const ResponsiveDecoratorWidget(
        mobile: DetailViewMobile(),
        tablet: DetailViewMobile(),
        desktop: DetailViewMobile(),
      ),
    );
  }
}
