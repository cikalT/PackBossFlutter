import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:packboss/pages/misc/unknown_page.dart';

import 'pages/auth/login/login_page.dart';
import 'routes/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.cupertino,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      getPages: AppPages.pages,
      unknownRoute: GetPage(
        name: 'unknown',
        page: () => UnknownPage(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PackBoss',
      // theme: ThemeData(
      //   primarySwatch: Colors.transparent,
      // ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
