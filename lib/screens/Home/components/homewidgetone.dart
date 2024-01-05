import 'package:flutter/material.dart';
import 'package:khanglobalapp/utils/colorResources.dart';
import 'package:khanglobalapp/utils/style_file.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Homewidgetoneui extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData? icon;
  final double? height;
  final double? width;
  final Color? colorbackground;
  final Color? boxcolor;
  final Color? iconcolor;
  final double? iconsize;
  final Function()? onTap;
  const Homewidgetoneui(
      {super.key,
      required this.title,
      required this.subtitle,
      this.height,
      this.width,
      this.icon,
      this.iconsize,
      this.colorbackground,
      this.boxcolor,
      this.iconcolor,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(1.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: width ?? 5.h,
              height: height ?? 5.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.h),
                color: colorbackground ??
                    ColorResources.primaryColor.withOpacity(0.2),
              ),
              child: Icon(
                icon,
                size: iconsize ?? 2.6.h,
                color: iconcolor ?? ColorResources.primaryColor,
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: Style_File.onboardsubtitle.copyWith(
                        fontSize: 15.sp, color: ColorResources.grayColor)),
                Text(subtitle,
                    style: Style_File.title.copyWith(fontSize: 15.5.sp)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
