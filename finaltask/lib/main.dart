import 'package:finaltask/utils/colors.dart';
import 'package:flutter/material.dart';
import 'responsives/mobile_screen_layout.dart';
import 'responsives/responsive_layout_screen.dart';
import 'responsives/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: ResponsiveLayout(mobileScreenLayout: MobileScreenLayout(), webScreenLayout:WebScreenLayout(),),
    );
  }
}

