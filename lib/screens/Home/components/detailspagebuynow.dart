import 'package:flutter/material.dart';
import 'package:khanglobalapp/utils/colorResources.dart';
import 'package:khanglobalapp/utils/style_file.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailspageBuyNow extends StatefulWidget {
  final String? price;
  final String? text;
  final Function()? onTap;
  const DetailspageBuyNow({
    super.key,
    this.price,
    this.text,
    this.onTap,
  });

  @override
  State<DetailspageBuyNow> createState() => _DetailspageBuyNowState();
}

class _DetailspageBuyNowState extends State<DetailspageBuyNow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onTap,
        child: Container(
          height: 10.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: ColorResources.whiteColor,
            // borderRadius: BorderRadius.circular(1.h),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 4,
                blurRadius: 10,
                offset: const Offset(6, 1),
              )
            ],
          ),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 1.h, bottom: 1.h, left: 2.h, right: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: Style_File.title
                              .copyWith(color: Colors.grey, fontSize: 16.sp),
                        ),
                        Text(
                          widget.price ?? '',
                          style: Style_File.title
                              .copyWith(color: Colors.black, fontSize: 19.sp),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 6.h,
                      width: 55.w,
                      decoration: BoxDecoration(
                        color: ColorResources.primaryColor,
                        borderRadius: BorderRadius.circular(1.h),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: const Offset(-1, 3),
                          )
                        ],
                      ),
                      child: Center(
                          child: Padding(
                        padding: EdgeInsets.only(left: 2.w, right: 2.w),
                        child: Text(
                          widget.text ?? '',
                          style: Style_File.title.copyWith(color: Colors.white),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
