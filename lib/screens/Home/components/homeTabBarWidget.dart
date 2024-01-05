import 'package:flutter/material.dart';
import 'package:khanglobalapp/screens/Home/tabviewComponent/tabthree.dart';
import 'package:khanglobalapp/utils/colorResources.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeTabBarWidget extends StatelessWidget {
  const HomeTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 48.h),
      child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              TabBar(
                labelColor: ColorResources.primaryColor,
                unselectedLabelColor: Colors.grey,
                indicatorColor: ColorResources.primaryColor,
                tabs: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    color: ColorResources.whiteColor,
                    child: const Text(
                      "Overview",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    color: ColorResources.whiteColor,
                    child: const Text(
                      "Classroom",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    color: ColorResources.whiteColor,
                    child: const Text(
                      "Demo Videos",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              const TabBarView(
                children: [
                  TabThreeWidget(),
                  TabThreeWidget(),
                  TabThreeWidget(),
                ],
              ),
            ],
          )),
    );
  }
}
