import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:khanglobalapp/page_routes/routes.dart';
import 'package:khanglobalapp/utils/buttonWidget.dart';
import 'package:khanglobalapp/utils/colorResources.dart';
import 'package:khanglobalapp/utils/mainBar.dart';
import 'package:khanglobalapp/utils/style_file.dart';
import 'package:khanglobalapp/utils/textform.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
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
                        top: 1.h, bottom: 4.h, right: 2.5.h, left: 2.5.h),
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
                          labeltext: "Email id",
                          textEditingController: emailController,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextFormScreen(
                          labeltext: "Mobile Number",
                          textEditingController: mobileController,
                          keyboardType: TextInputType.number,
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
                          height: 2.h,
                        ),
                        TextFormScreen(
                          labeltext: "Confirm Password",
                          textEditingController: confirmpasswordController,
                          suffixIcon: true,
                          obscure: _obscureText1,
                          onPressed: _toggle1,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.forgetPasswordScreen);
                              },
                              child: Text(
                                "Forget Password ?",
                                style:
                                    Style_File.title.copyWith(fontSize: 16.sp),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        ButtonWidget(
                          text: "Sign Up",
                          onTap: () {
                            Navigator.pushNamed(context, Routes.homeScreen);
                          },
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        RichText(
                          text: TextSpan(
                            style: Style_File.subtitle,
                            children: <TextSpan>[
                              const TextSpan(
                                  text:
                                      "By creating on sign-up, you agree to Khan Global Studies \n"),
                              TextSpan(
                                  text: 'Terms and condition.',
                                  style: Style_File.onboardsubtitle.copyWith(
                                      fontSize: 14.sp,
                                      color: ColorResources.primaryColor),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {}),
                            ],
                          ),
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
                                const TextSpan(text: "Already an account?  "),
                                TextSpan(
                                    text: 'SignIn Now',
                                    style: Style_File.title.copyWith(
                                        fontSize: 16.sp,
                                        color: ColorResources.primaryColor),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(
                                            context, Routes.signInScreen);
                                      }),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4.h,
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
