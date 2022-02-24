import 'package:fanap_challange_flutter/src/presentation/home/provider/home_provider.dart';
import 'package:fanap_challange_flutter/src/presentation/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () {
        return ChangeNotifierProvider(
          create: (context) => HomeProvider(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const SplashPage(),
          ),
        );
      },
    );
  }
}
