import 'package:flutter/material.dart';

import 'package:portfolio_task/responsive/responsive_layout_screen.dart';
import 'package:portfolio_task/responsive/web_screen_layout.dart';
import 'package:portfolio_task/responsive/mobile_screen_layout.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Typography.whiteCupertino),
      ),
      home: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.all(5),
        child: const ResponsiveLayout(
          MobileScreen(),
          WebScreen(),
        ),
      ),
    );
  }
}
