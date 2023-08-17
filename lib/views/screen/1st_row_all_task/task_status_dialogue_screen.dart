import 'package:flutter/material.dart';


import '../../widgets/const_color.dart';
import '../../widgets/progress_bar_widget.dart';
import '../../widgets/radio_button.dart';
import '../auth/widget/elevation_button_widget.dart';

class TaskStatusScreen extends StatefulWidget {
  const TaskStatusScreen({Key? key}) : super(key: key);

  @override
  State<TaskStatusScreen> createState() => _TaskStatusScreenState();
}

class _TaskStatusScreenState extends State<TaskStatusScreen> {
  int selectedRadio = 0;

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Task Status',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 19,
                          color: Color(0xFF24252C),
                        ),
                      ),
                      Image.asset('assets/images/circle.png'),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const RadioButton(),
                Column(children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text('progress',style: TextStyle(fontSize: 15),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 18.0),
                        child: Text('100%',style: TextStyle(color: Color(0xFF5A5859),fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),

        Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20, top: 12),
        child: CustomProgressBar(
          progress: 1.0,
          indicatorSize: 8.0,
          indicatorColor:AppColors.greycolor, // Color of the rounded indicator
          backgroundColor: AppColors.blackcolor,
        ),
      ),



                ],),
                SizedBox(height: 80,),
                ElevationButton(
                  text: 'Done',
                  onPressed: () {

                    // if (enteredEmail.isEmpty) {
                    //   // Show snackbar if email is empty
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //     SnackBar(
                    //       content: Text('Please enter your email.'),
                    //     ),
                    //   );
                    // } else {
                    //   // Add your button click logic here
                   // Navigator.push(
                   //      //context,
                   //   //   MaterialPageRoute(builder: (context) => SetTaskProgressScreen()),
                   //    );
                    //}
                  },
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

