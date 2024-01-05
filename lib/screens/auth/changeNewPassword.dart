import 'package:flutter/material.dart';
import 'package:khanglobalapp/utils/buttonWidget.dart';
import 'package:khanglobalapp/utils/colorResources.dart';
import 'package:khanglobalapp/utils/mainBar.dart';
import 'package:khanglobalapp/utils/style_file.dart';
import 'package:khanglobalapp/utils/textform.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChangeNewPassword extends StatefulWidget {
  const ChangeNewPassword({super.key});

  @override
  State<ChangeNewPassword> createState() => _ChangeNewPasswordState();
}

class _ChangeNewPasswordState extends State<ChangeNewPassword> {
  bool firstvalue = false;
  final _formKey = GlobalKey<FormState>();

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  bool _obscureText = true;
  bool _obscureText1 = true;

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
                              "Forget Password or reset your passowrd now ",
                              maxLines: 3,
                              style:
                                  Style_File.subtitle.copyWith(fontSize: 15.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "New Password",
                          style: Style_File.subtitle.copyWith(fontSize: 15.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        TextFormScreen(
                          labeltext: "Password",
                          textEditingController: passwordController,
                          suffixIcon: true,
                          obscure: _obscureText,
                          onPressed: _toggle,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          "Confirm Password",
                          style: Style_File.subtitle.copyWith(fontSize: 15.sp),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        TextFormScreen(
                          labeltext: "Confirm Password",
                          textEditingController: confirmpasswordController,
                          suffixIcon: true,
                          obscure: _obscureText1,
                          onPressed: _toggle1,
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        ButtonWidget(
                          text: "Reset Password",
                          onTap: () {
                            //   Navigator.pushNamed(context, Routes.oTPScreen);
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

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggle1() {
    setState(() {
      _obscureText1 = !_obscureText1;
    });
  }
}
