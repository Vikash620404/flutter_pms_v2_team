import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/development_team.dart';
import 'package:flutter_pms_v2_team/views/screen/profile_screen/edit_profile_screen.dart';

import '../../widgets/const_color.dart';
import '../project_screen/widget/project_screen_banner_widget.dart';
class TeamRolePage extends StatefulWidget {
  const TeamRolePage({super.key});

  @override
  State<TeamRolePage> createState() => _TeamRolePageState();
}

class _TeamRolePageState extends State<TeamRolePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EditProfileScreen()),
                    );
                  },
                  child: CustomRowWidget(labelText: 'Team Roles',)),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 180,
                        decoration: BoxDecoration(
                          color: AppColors.mediumgrey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const DevelopmentTeamScreen()),
                                  );
                                },
                                child: Container(
                                  height: 55,
                                  width: 55,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: Image.asset('assets/images/code-circle.png'),
                                ),
                              ),
                              const SizedBox(height: 15,),
                              const Text(
                                'Development',
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: AppColors.deepgreycolor),
                              ),
                              const SizedBox(height: 3,),
                              const Text(
                                '12 Member',
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.deepgreycolor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        height: 180,
                        decoration: BoxDecoration(
                          color: AppColors.mediumgrey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Image.asset('assets/images/code-circle.png'),
                              ),
                              SizedBox(height: 15,),
                              Text(
                                'UI/UX Design',
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: AppColors.deepgreycolor),
                              ),
                              SizedBox(height: 3,),

                              Text(
                                '12 Member',
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.deepgreycolor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 180,
                        decoration: BoxDecoration(
                          color: AppColors.mediumgrey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Image.asset('assets/images/bag-tick.png'),
                              ),
                              SizedBox(height: 15,),
                              Text(
                                'Marketing',
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: AppColors.deepgreycolor),
                              ),
                              SizedBox(height: 3,),
                              Text(
                                '12 Member',
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.deepgreycolor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        height: 180,
                        decoration: BoxDecoration(
                          color: AppColors.mediumgrey,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Image.asset('assets/images/note-text.png'),
                              ),
                              SizedBox(height: 15,),
                              Text(
                                'Content',
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: AppColors.deepgreycolor),
                              ),
                              SizedBox(height: 3,),
                              Text(
                                '12 Member',
                                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.deepgreycolor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
