import 'package:flutter/material.dart';
import 'package:khanglobalapp/page_routes/routes.dart';
import 'package:khanglobalapp/utils/buttonWidget.dart';
import 'package:khanglobalapp/utils/colorResources.dart';
import 'package:khanglobalapp/utils/mainBar.dart';
import 'package:khanglobalapp/utils/style_file.dart';
import 'package:khanglobalapp/utils/textform.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController mobileController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1.h,
        backgroundColor: ColorResources.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MainBar(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 4.h, bottom: 4.h, right: 2.5.h, left: 2.5.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Forget Password",
                              style: Style_File.title.copyWith(fontSize: 18.sp),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "Don't worry it happen.please enter yoyur mobile number to reset your passowrd",
                              maxLines: 3,
                              style:
                                  Style_File.subtitle.copyWith(fontSize: 15.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        TextFormScreen(
                          labeltext: "Mobile Number",
                          textEditingController: mobileController,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        ButtonWidget(
                          text: "Send OTP",
                          onTap: () {
                            Navigator.pushNamed(context, Routes.oTPScreen);
                          },
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
