import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/frontHomeScreen/widget/floating_action_button.dart';
import 'package:flutter_pms_v2_team/views/screen/frontHomeScreen/widget/segmented_control%20button.dart';

import '../../widgets/const_color.dart';

class FrontHomePage extends StatefulWidget {
  const FrontHomePage({Key? key}) : super(key: key);

  @override
  State<FrontHomePage> createState() => _FrontHomePageState();
}

class _FrontHomePageState extends State<FrontHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  AppColors.whitecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 60,
                      child: SizedBox(
                        height: 15,
                        width: 15,
                        child: Transform.scale(
                            scale: 1.2,
                            child: Image.asset('assets/images/aimerseicon.png')),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 125.0),
                          child: Flexible(
                            child: Text(
                              "Aimerse",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.only(right: 50.0),
                          child: Text(
                            "Monday, 20 May 2023",
                            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: AppColors.blackcolor),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: SizedBox(
                        height: 30,
                        width: 30,
                        child: Transform.scale(
                            scale: 1.2,
                            child: Image.asset('assets/images/cartoonIcon.png')),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Add the segmented control here
              const SegmentedControl(),
              const SizedBox(height: 25,),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigationBar(), // Call the FloatingActionButtonWidget here
    );
  }
}
