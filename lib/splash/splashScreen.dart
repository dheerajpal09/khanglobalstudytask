import 'dart:async';

import 'package:flutter/material.dart';
import 'package:khanglobalapp/page_routes/routes.dart';
import 'package:khanglobalapp/utils/colorResources.dart';
import 'package:khanglobalapp/utils/imageResources.dart';
import 'package:khanglobalapp/utils/loaderscreen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, homePageRoute);
  }

  homePageRoute() async {
    Navigator.pushReplacementNamed(context, Routes.signupScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.h),
                  child: SizedBox(
                      height: 14.h,
                      child: Image.asset(
                        ImageResources.logo,
                      )),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Khan Global Studies",
                  style: TextStyle(
                      color: ColorResources.grayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 28.h),
                    child: const Column(
                      children: [
                        Center(
                          child: LoaderScreen(),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
