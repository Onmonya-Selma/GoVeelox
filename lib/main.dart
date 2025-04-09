import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:goveelox/views/location.dart';

import 'package:goveelox/views/home.dart';
import 'package:goveelox/views/create.dart';
import 'package:goveelox/views/profsetup.dart';
import 'package:goveelox/views/verify.dart';
import 'package:goveelox/views/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'GoVeelox',
        debugShowCheckedModeBanner: false,
        home: RoutePage(),
        theme: ThemeData(
          fontFamily: 'Nohemi',
          textTheme: const TextTheme(
            titleSmall: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF101928),
            ),
            displaySmall: TextStyle(


            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Color(0xFF101928),
            ),
            titleLarge: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: Color(0xFF101928),
            ),
            bodySmall: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xFF6677185)),
            bodyMedium: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color(0xFF6677185)),
            bodyLarge: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF6677185)),
            // you can even define weight, spacing, etc.
          ),
        ),

        // initialRoute: '/home',
        getPages: [
          GetPage(name: '/home', page: () => HomePage()),
          GetPage(name: '/create', page: () => CreateAccount()),
          GetPage(name: '/verify', page: () => VerifyAccount()),
          GetPage(name: '/profilesetup', page: () => ProfileSetup()),
          GetPage(name: '/location', page: () => RoutePage()),
        ]);
  }
}
