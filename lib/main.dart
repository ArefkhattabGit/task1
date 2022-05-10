import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_task/app/constant/font_helper.dart';
import 'package:flutter_application_task/app/screens/character%20_guide_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app/constant/colors.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: whiteColor,
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            shape: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 0.1.w,
              ),
            ),
            iconTheme: const IconThemeData(color: blackColor),
            elevation: 0.0,
            backgroundColor: whiteColor,
            centerTitle: true,
            titleTextStyle: FontsAppHelper().avenirArabicHeavyFont(),
            systemOverlayStyle: const SystemUiOverlayStyle(
              // Status bar color
              statusBarColor: whiteColor,

              // Status bar brightness (optional)
              statusBarIconBrightness:
                  Brightness.dark, // For Android (dark icons)
              statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),
          ),
          tabBarTheme: TabBarTheme(
            labelColor: blueColor,
            labelStyle: FontsAppHelper().avenirArabicMediumFont(),
            unselectedLabelStyle: FontsAppHelper().avenirArabicMediumFont(),
            unselectedLabelColor: const Color(0xff8A8A8F
                // 0xffBDBBBB,
                ),
            indicator: const UnderlineTabIndicator(),
          ),
        ),
        home: const Directionality(
          child: CharacterGuideScreen(),
          textDirection: TextDirection.rtl,
        ),
      ),
      designSize: const Size(360, 690),
    );
  }
}
