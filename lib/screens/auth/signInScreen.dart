import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:khanglobalapp/page_routes/routes.dart';
import 'package:khanglobalapp/utils/buttonWidget.dart';
import 'package:khanglobalapp/utils/colorResources.dart';
import 'package:khanglobalapp/utils/mainBar.dart';
import 'package:khanglobalapp/utils/style_file.dart';
import 'package:khanglobalapp/utils/textform.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscureText = true;

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
                        TextFormScreen(
                          labeltext: "Name",
                          textEditingController: nameController,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextFormScreen(
                          labeltext: "Enter Your E-Mail",
                          textEditingController: emailController,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextFormScreen(
                          labeltext: "Password",
                          textEditingController: passwordController,
                          suffixIcon: true,
                          obscure: _obscureText,
                          onPressed: _toggle,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        ButtonWidget(
                          text: "Login",
                          onTap: () {},
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              style:
                                  Style_File.subtitle.copyWith(fontSize: 15.sp),
                              children: <TextSpan>[
                                const TextSpan(text: "Don't an account?  "),
                                TextSpan(
                                    text: 'Sign Up Now',
                                    style: Style_File.title.copyWith(
                                        fontSize: 15.sp,
                                        color: ColorResources.primaryColor),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(
                                            context, Routes.signupScreen);
                                      }),
                              ],
                            ),
                          ),
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
}
