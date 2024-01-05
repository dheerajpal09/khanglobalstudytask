import 'package:flutter/material.dart';
import 'package:khanglobalapp/page_routes/routes.dart';
import 'package:khanglobalapp/utils/buttonWidget.dart';
import 'package:khanglobalapp/utils/colorResources.dart';
import 'package:khanglobalapp/utils/mainBar.dart';
import 'package:khanglobalapp/utils/style_file.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String _finalotp = '';
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
                        top: 2.h, bottom: 4.h, right: 2.5.h, left: 2.5.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "00:42",
                              style: Style_File.title.copyWith(fontSize: 24.sp),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              "Type the verifcation code we have sent on your number",
                              maxLines: 3,
                              style:
                                  Style_File.subtitle.copyWith(fontSize: 16.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Padding(
                          padding: EdgeInsets.all(1.h),
                          child: PinCodeTextField(
                            appContext: context,
                            enablePinAutofill: true,
                            length: 4,
                            keyboardType:
                                const TextInputType.numberWithOptions(),
                            obscureText: false,
                            cursorColor: ColorResources.grayColor,
                            animationType: AnimationType.fade,
                            pastedTextStyle: TextStyle(
                              color: ColorResources.primaryColor,
                              fontWeight: FontWeight.bold,
                            ),
                            pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                disabledColor: ColorResources.whiteColor,
                                borderRadius: BorderRadius.circular(1.h),
                                fieldHeight: 100.w / 7,
                                fieldWidth: 100.w / 7,
                                activeFillColor: ColorResources.whiteColor,
                                inactiveColor: ColorResources.grayColor,
                                inactiveFillColor: ColorResources.whiteColor,
                                selectedFillColor: ColorResources.whiteColor,
                                selectedColor: ColorResources.primaryColor,
                                activeColor: ColorResources.primaryColor),
                            animationDuration:
                                const Duration(milliseconds: 300),
                            enableActiveFill: true,
                            onCompleted: (v) {
                              print("Completed");
                              _finalotp = v;
                              print(_finalotp);
                            },
                            onChanged: (value) {
                              print(value);
                              setState(() {
                                // currentText = value;
                              });
                            },
                            beforeTextPaste: (text) {
                              print("Allowing to paste $text");
                              return true;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        ButtonWidget(
                          text: "Verify OTP",
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.changeNewPassword);
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
