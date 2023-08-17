import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/elevation_button_profileinfo.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/profile_info_card_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/widget/profile_picture_widget.dart';

import '../../widgets/global_app_color_widget.dart';
import '../task/widget/banner_widget.dart';
import '../task/widget/elevation_button_widget.dart';


class TeamMemberDetail extends StatefulWidget {
  const TeamMemberDetail({Key? key}) : super(key: key);

  @override
  State<TeamMemberDetail> createState() => _TeamMemberDetailState();
}

class _TeamMemberDetailState extends State<TeamMemberDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height :20.0),
                const HeaderWidget(text1: 'Profile Info',),
                const SizedBox(height: 30.0),
                const ProfilePicture(),
                const SizedBox(height: 20.0),

                const Text(
                  'Vikram Jha',overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),

                ),const SizedBox(height: 10.0),

                const Text(
                  'UI/UX Designer',overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: titleTextColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),

                ),const SizedBox(height: 25.0),
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: containerColor,
                      border: Border.all(color: containerBorderColor)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/call.png'),
                          const SizedBox(width: 8.0),
                          const Text('Call Now',overflow: TextOverflow.ellipsis,),
                        ],
                      ),const VerticalDivider(endIndent: 8,indent: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset('assets/images/sms.png'),
                          const SizedBox(width: 8.0),
                          const Text('Email Me',overflow: TextOverflow.ellipsis,),
                        ],
                      ),

                    ],
                  ),
                ),const SizedBox(height: 25.0),
                const ProfileInfoCard(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar:  const ElevationButtonProfileInfo(text1: 'Assign Task'),
    );
  }
}
