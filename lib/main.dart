import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:komputergrafis/app/widgets/splash.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());

  // runApp(
  //   GetMaterialApp(
  //     title: "Application",
  //     initialRoute: AppPages.INITIAL,
  //     getPages: AppPages.routes,
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Colors.white,
      ),
    );
    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: "Application",
    //   initialRoute: AppPages.INITIAL,
    //   getPages: AppPages.routes,
    // );
    // return SplashScreen();
    return FutureBuilder(
      future: Future.delayed(
        Duration(seconds: 4),
      ),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Application",
            initialRoute: Routes.HOME,
            getPages: AppPages.routes,
          );
        }
      },
    );
    // return SplashScreen();
  }
}
