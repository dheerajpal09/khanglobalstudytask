import 'package:flutter/cupertino.dart';
import 'package:khanglobalapp/utils/imageResources.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MainBar extends StatelessWidget {
  final String? image;
  final String? text;
  final String? subtext;
  const MainBar({super.key, this.image, this.text, this.subtext});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          ImageResources.appBarBackground,
          width: 100.w,
        ),
      ],
    );
  }
}
