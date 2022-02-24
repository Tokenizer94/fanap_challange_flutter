import 'package:fanap_challange_flutter/src/core/constants/general_constants.dart';
import 'package:fanap_challange_flutter/src/presentation/detail/detail_view_mobile.dart';
import 'package:fanap_challange_flutter/src/presentation/home/widgets/list_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeViewTablet extends StatelessWidget {
  const HomeViewTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// ScreenUtil initialization with tablet size
    ScreenUtil.init(
      BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height,
      ),
      designSize: tabletDesignSize,
      context: context,
      minTextAdapt: true,
    );

    return Row(
      children: [
        SizedBox(
          width: 0.35.sw,
          child: ListView.separated(
            itemCount: 20,
            itemBuilder: (context, index) => ListItemWidget(
              index: index,
              isMobileSize: false,
            ),
            separatorBuilder: (context, index) => Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey.shade300,
            ),
          ),
        ),
        const Expanded(
          child: DetailViewMobile(),
        ),
      ],
    );
  }
}
