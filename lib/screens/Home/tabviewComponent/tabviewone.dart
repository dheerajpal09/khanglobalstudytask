import 'package:flutter/material.dart';
import 'package:khanglobalapp/utils/colorResources.dart';
import 'package:khanglobalapp/utils/imageResources.dart';
import 'package:khanglobalapp/utils/style_file.dart';
import 'package:khanglobalapp/utils/titletextstyle.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeListoneWidget extends StatefulWidget {
  const HomeListoneWidget({super.key});

  @override
  State<HomeListoneWidget> createState() => _HomeListoneWidgetState();
}

class _HomeListoneWidgetState extends State<HomeListoneWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 2.h),
            child: Column(
              children: [
                Container(
                  height: 9.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2.w),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1.5,
                        blurRadius: 1,
                        offset: const Offset(1, 1),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 0.5.h, bottom: 0.5.h, right: 2.w, left: 2.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 8.h,
                            width: 20.w,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(3.w),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: const Offset(1, 1),
                                ),
                              ],
                            ),
                            child: Stack(
                              children: [
                                Center(child: Image.asset(ImageResources.logo)),
                                Center(
                                  child: Container(
                                      height: 3.h,
                                      width: 3.h,
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.6),
                                        borderRadius:
                                            BorderRadius.circular(5.w),
                                      ),
                                      child: const Icon(
                                        Icons.play_arrow,
                                        color: Colors.white,
                                      )),
                                )
                              ],
                            )),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TitleTextStyle(
                              text:
                                  "UPSC Prelimes 2023 Exam analysis || \nPolity and UP special by khan Sir",
                              maxline: 2,
                              style: Style_File.texttitlemain.copyWith(
                                  color: ColorResources.blackColor,
                                  fontSize: 15.sp),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            TitleTextStyle(
                              text: "5 september 2023 . 1 hr 30 min",
                              style: Style_File.subtitle
                                  .copyWith(color: ColorResources.blackColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
