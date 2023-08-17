import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/project_details_pending_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/all_project_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/container_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/project_screen/widget/drop_down_button.dart';
import 'package:flutter_pms_v2_team/views/screen/select/select_module_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/select/select_version_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/select/widget/all_container_widget.dart';
import 'package:flutter_pms_v2_team/views/screen/select/widget/list_container_widget.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

import '../../widgets/design_container_widget.dart';
import '../auth/reset_password_screen.dart';
import '../auth/widget/elevation_button_widget.dart';
import '../frontHomeScreen/front_home_page.dart';
import '../frontHomeScreen/widget/floating_action_button.dart';
import '../project_screen/widget/project_screen_banner_widget.dart';
class SelectProjectScreen extends StatefulWidget {
  const SelectProjectScreen({super.key});

  @override
  State<SelectProjectScreen> createState() => _SelectProjectScreenState();
}

class _SelectProjectScreenState extends State<SelectProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                     context,
                      MaterialPageRoute(
                      builder: (context) => const FrontHomePage(),
                      ),
                    );
                  },
                  child: CustomRowWidget(labelText: 'Select Project',)),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.only(left: 50.0),
                child: Center(child: Text('1/5 steps')),
              ),
              
              const SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: AppColors.greycolor),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: const Row(
                    children: [
                      Expanded( // Use Expanded widget to allow the TextField to take available space
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search for project',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      Icon(Icons.search),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),


              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SelectVersionScreen()),
                    );
                  },
                  child: SizedBox(
                    height: 600,
                    child: Column(
                      children: myContainer(),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 100,),

              Container(
                height: 100,
                color:AppColors.lightgreycolor,
                child: ElevationButton(
                  text: 'Next',
                  onPressed: () {
                    // String code = firstController.text + secondController.text +
                    //     thirdController.text + fourthController.text;

                    // if (code.length < 4) { // Corrected condition
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(
                    //       content: Text('Please enter the complete four-digit code.'),
                    //     ),
                    //   );
                    // } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ResetPasswordScreen()),
                    );
                  },
                  // },
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ],

          ),

        ),
      ),

    );
  }
}
