import 'package:flutter/material.dart';
import 'package:khanglobalapp/utils/colorResources.dart';
import 'package:khanglobalapp/utils/imageResources.dart';
import 'package:khanglobalapp/utils/style_file.dart';
import 'package:khanglobalapp/utils/titletextstyle.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TabThreeWidget extends StatefulWidget {
  const TabThreeWidget({super.key});

  @override
  State<TabThreeWidget> createState() => _TabThreeWidgetState();
}

class _TabThreeWidgetState extends State<TabThreeWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 17,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 2.5.h, right: 2.5.h, bottom: 2.h),
            child: Column(
              children: [
                Container(
                  height: 8.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2.w),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 1.5,
                        blurRadius: 1,
                        offset: const Offset(1, 2),
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
                        CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 2.h,
                            backgroundImage: const AssetImage(
                              ImageResources.logo,
                            )),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TitleTextStyle(
                              text: "STATE PSC",
                              style: Style_File.texttitlemain.copyWith(
                                  color: ColorResources.primaryColor,
                                  fontSize: 16.sp),
                            ),
                            SizedBox(
                              height: 0.5.h,
                            ),
                            TitleTextStyle(
                              text: "(CGL, CHSL, CPO, MTS, CONSTABLE",
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
