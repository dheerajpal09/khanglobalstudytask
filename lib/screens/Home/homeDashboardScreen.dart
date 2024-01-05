import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:khanglobalapp/screens/Home/components/detailspagebuynow.dart';
import 'package:khanglobalapp/screens/Home/components/homewidgetone.dart';
import 'package:khanglobalapp/screens/Home/tabviewComponent/tabviewone.dart';
import 'package:khanglobalapp/utils/colorResources.dart';
import 'package:khanglobalapp/utils/style_file.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

final List<String> imgList = [
  "https://miro.medium.com/v2/resize:fit:1400/1*y86B5ARHbgD1LNw2acrrMg.jpeg",
  "https://s3.ap-northeast-1.wasabisys.com/kgs/ca/thumbnail%20(2).jpg",
  "https://i.ytimg.com/vi/ORoBxm091V4/hqdefault.jpg",
  "https://i.ytimg.com/vi/5x-atbCuGog/sddefault.jpg",
  "https://kgs.nyc3.cdn.digitaloceanspaces.com/courses/medium/e0591a75-1468-498d-8553-0c42ce487b86.png",
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: DetailspageBuyNow(
        price: "₹ 4500.00",
        text: "Buy Now",
        onTap: () {
          // Navigator.pushNamed(context, Routes.addtoCartScreen);
        },
      ),
      appBar: AppBar(
        backgroundColor: ColorResources.whiteColor,
        title: Text(
          "SSC CGL Mains 2023 SSC CGL \nMains 2023",
          style: Style_File.title.copyWith(fontSize: 18.sp),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.only(bottom: 2.h, right: 2.h, left: 2.h, top: 1.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 100.w,
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                  ),
                  items: imageSliders,
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "SSC CGL Mains 2023",
                style: Style_File.title.copyWith(fontSize: 17.sp),
              ),
              SizedBox(
                height: 2.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Homewidgetoneui(
                    icon: Icons.local_fire_department,
                    title: "Duration",
                    subtitle: "10 Month",
                  ),
                  Homewidgetoneui(
                    icon: Icons.video_call_sharp,
                    title: "Type",
                    subtitle: "Live + Recorded",
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Homewidgetoneui(
                    icon: Icons.stacked_bar_chart,
                    title: "Validity",
                    subtitle: "10 Month",
                  ),
                  Homewidgetoneui(
                    icon: Icons.language,
                    title: "Language",
                    subtitle: "English | Hindi   ",
                  ),
                ],
              ),
              // const HomeTabBarWidget(),

              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    color: ColorResources.whiteColor,
                    child: Text(
                      "Overview",
                      style: Style_File.title.copyWith(
                        fontSize: 17.sp,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    color: ColorResources.whiteColor,
                    child: Text(
                      "Classroom",
                      style: Style_File.title.copyWith(
                        fontSize: 17.sp,
                        color: ColorResources.grayColor,
                        // decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    color: ColorResources.whiteColor,
                    child: Text(
                      "Demo Videos",
                      style: Style_File.title.copyWith(
                        fontSize: 17.sp,
                        color: ColorResources.grayColor,
                        //  decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 2.h,
              ),
              const HomeListoneWidget()
            ],
          ),
        ),
      ),
    );
  }

  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(2.h)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          // padding: const EdgeInsets.symmetric(
                          //     vertical: 10.0, horizontal: 10.0),
                          // child: Text(
                          //   'No. ${imgList.indexOf(item)} image',
                          //   style: const TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 20.0,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();
}
