import 'package:fanap_challange_flutter/src/presentation/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DetailViewMobile extends StatelessWidget {
  const DetailViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: Replace hardcoded texts
    final String _detailText1 =
        'Some detail text for item ${context.watch<HomeProvider>().selectedItemIndex}';
    const String _detailText2 = 'Some more text for the detail view';
    return Padding(
      padding: EdgeInsets.only(
        top: 0.05.sh,
        right: 0.03.sw,
        left: 0.03.sw,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          /// `First text`
          Text(
            _detailText1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 22.sp,
            ),
          ),
          SizedBox(height: 0.08.sh),

          /// `Second Text`
          Text(
            _detailText2,
            style: TextStyle(
              fontSize: 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
