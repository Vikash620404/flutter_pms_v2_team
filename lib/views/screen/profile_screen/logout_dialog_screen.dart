import 'package:flutter/material.dart';

import '../../widgets/const_color.dart';
class LogoutDialogScreen extends StatefulWidget {
  const LogoutDialogScreen({super.key});

  @override
  State<LogoutDialogScreen> createState() => _LogoutDialogScreenState();
}
bool cancelClicked = false;
bool deleteClicked = false;

class _LogoutDialogScreenState extends State<LogoutDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50,),
                Image.asset('assets/images/logoutIcon.png'),
                const SizedBox(height: 20,),
                const Text('Confirm Logout',style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.blackcolor,fontSize: 18),),
                const SizedBox(height: 30,),
                const Text('Are you sure you want to logout ?'),

                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                cancelClicked = !cancelClicked;
                                deleteClicked = false;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: cancelClicked ? Colors.grey : AppColors.greycolor,
                                ),
                                color: cancelClicked ? Colors.grey : AppColors.whitecolor,
                              ),
                              child: Center(
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                    color: cancelClicked ? Colors.white : AppColors.greycolor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: SizedBox(
                          height: 40,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                deleteClicked = !deleteClicked;
                                cancelClicked = false;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: AppColors.greycolor, // Always grey border color
                                ),
                                color: deleteClicked ?AppColors.greycolor : AppColors.whitecolor,
                              ),
                              child: Center(
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                    color: deleteClicked ? AppColors.whitecolor : AppColors.greycolor,
                                  ),
                                ),
                              ),
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
      ),
    );
  }
}
