import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';
import 'package:flutter_pms_v2_team/views/widgets/two_segmentedcontrol_button.dart';

import '../widgets/completed_screen_widget.dart';
import '../widgets/inprogress_container_widget.dart';
import '../widgets/toggle_checked_box.dart';
class CompletedScreen extends StatefulWidget {
  const CompletedScreen({super.key});

  @override
  State<CompletedScreen> createState() => _CompletedScreenState();
}

class _CompletedScreenState extends State<CompletedScreen> {
  @override
  bool _expanded = false;
  bool isChecked = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  // Aligns items to the start of the row (left-aligned)
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Transform.scale(
                          scale: 1.0,
                          child: Image.asset("assets/images/arrow-left.png"),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Adds some space between the image and text
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          "Mobile app design",
                          style: TextStyle(color: AppColors.deepgreycolor,fontSize: 18,fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center, // Aligns text to the center of the available space
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              TwoSegmentedControl(),
              SizedBox(height: 25,),

              SizedBox(
                height: 750,
                // width: 800,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0,top: 10),
                      child: ExpandableText(
                        text: 'This is a sample text that needs to be expanded or collapsed jhsdbfjhbfj jhsdbfjhdsf jhbdsjfbjsvbffhd hdbjhsd jsdbjhdsbfh jsdbfjhsbfu jdbfjhdsbfjsb jbsdjfbsjfb jhbjhbdsv jbcjhsbbvh jhbcjhsdb jhbjhcbjsdb jbcjvdsj jhbsdjcdcg hvchjdvh jbjhdsd ggvchjdsvc.',
                        max: 0.5, // Adjust the value as needed

                      ),
                    );
                  },
                )

              )








            ],
          ),
        ),
      ),
    );
  }
}
