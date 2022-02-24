import 'package:fanap_challange_flutter/src/presentation/components/responsive_decorator_widget.dart';
import 'package:fanap_challange_flutter/src/presentation/detail/detail_view_mobile.dart';
import 'package:fanap_challange_flutter/src/presentation/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Item ${context.watch<HomeProvider>().selectedItemIndex}',
        ),
      ),
      body: const ResponsiveDecoratorWidget(
        mobile: DetailViewMobile(),
        tablet: DetailViewMobile(),
        desktop: DetailViewMobile(),
      ),
    );
  }
}
