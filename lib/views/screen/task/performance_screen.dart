import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/task/problem_task_detail_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/problem_task_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/task_assigned_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/task_completed_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/task_in-progress_list_screen.dart';
import 'package:flutter_pms_v2_team/views/screen/task/task_overdue_list_screen.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

import '../../widgets/task_completed_container_widget.dart';
import '../frontHomeScreen/widget/floating_action_button.dart';
class PerformanceScreen extends StatefulWidget {
  const PerformanceScreen({super.key});

  @override
  State<PerformanceScreen> createState() => _PerformanceScreenState();
}

class _PerformanceScreenState extends State<PerformanceScreen> {
  String selectedValue = 'yearly';
  // size = MediaQuery.of(context).size;
  // height = size.height;
  // width = size.width;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left:20,top: 40),
                child: Align(
                    alignment:Alignment.centerLeft,child: Text('Performance',style: TextStyle(color:AppColors.blackcolor,fontWeight: FontWeight.w600,fontSize: 20),)),
              ),
              const SizedBox(height:6),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Align(
                    alignment:Alignment.centerLeft,child: Text('Select work performance peroid',style: TextStyle(color:AppColors.greycolor,fontWeight: FontWeight.w400,fontSize: 14),)),
              ),
            const SizedBox(height:14),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Container(
                        height: 30,
                        width: 100, // Adjust the width as needed
                        decoration: BoxDecoration(
                          color: Colors.white, // Set the container background color to white
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: Colors.grey, // Set the border color to grey
                            width: 1.0, // Set the border width
                          ),
                        ),
                        child: Row(
                          children: [
                            Spacer(),
                            DropdownButton<String>(
                              value: selectedValue,
                              items: <String>['yearly', 'monthly', 'daily'].map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                if (newValue != null) {
                                  setState(() {
                                    selectedValue = newValue;
                                  });
                                }
                              },
                              underline: Container(), // Remove the default underline
                              icon: const Icon(Icons.arrow_drop_down), // Add an arrow icon
                              style: const TextStyle(
                                color: AppColors.deepgreycolor, // Customize text color
                                fontSize: 16.0, // Customize text size
                              ),
                              dropdownColor: AppColors.lightgreycolor, // Set the dropdown background color
                              elevation: 1, // Add a shadow to the dropdown
                              isDense: true, // Reduce the height of the dropdown
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 15,),
                    Container(
                      height: 30,
                      width: 280, // Adjust the width as needed
                      decoration: BoxDecoration(
                        color: Colors.white, // Set the container background color to white
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: AppColors.lightgreycolor, // Set the border color to grey
                          width: 1.0, // Set the border width
                        ),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0), // Add some padding to the left
                            child: Icon(Icons.calendar_today), // Calendar icon
                          ),
                          Text(
                            '20 Jan 2022 - 20 Jan 2023', // Replace with your date range
                            style: TextStyle(
                              color: AppColors.deepgreycolor, // Customize text color
                              fontSize: 16.0, // Customize text size
                            ),
                          ),
                          Spacer(), // Push the dropdown icon to the right
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0), // Add some padding to the right
                            child: Icon(Icons.arrow_drop_down), // Dropdown icon
                          ),
                        ],
                      ),
                    ),



                  ],
                ),
            ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TaskCompletedScreen(),
                      ),
                    );
                  },
                  child:Container(
                    height: 150,
                    // height: 30,
                    width: double.infinity, // Adjust the width as needed
                    decoration: BoxDecoration(
                      color: Colors.white, // Set the container background color to white
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        color: AppColors.lightgreycolor, // Set the border color to grey
                        width: 1.0, // Set the border width
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 50.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 48.0),
                                child: Text('121',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color:AppColors.deepgreycolor),),
                              ),
                              SizedBox(width: 20,),
                              Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: Text('Task completed'),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Image.asset('assets/images/calendarwithcontainer.png'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Row(

                  children: [
                    Expanded(
                      child:GestureDetector(
                onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const TaskAssignedListScreen(),
                ),
                );
                },
                        child: Container(
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: AppColors.lightgreycolor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15.0, right: 50),
                                        child: Transform.scale(
                                          scale: 0.6, // Adjust the scale value as needed
                                          child: Image.asset('assets/images/calendarwithcontainer.png', width: 48, height: 48),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 8.0, right: 50),
                                        child: Text(
                                          '48',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 15.0,bottom: 15),
                                        child: Text(
                                          'Task assigned',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )



                    ),
                    const SizedBox(width: 15,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                          child:GestureDetector(
                          onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const TaskInProgressListScreen(),
                      ),
                      );
                      },
                            child: Container(
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: AppColors.lightgreycolor),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 15.0, right: 60),
                                            child: Transform.scale(
                                              scale: 0.6, // Adjust the scale value as needed
                                              child: Image.asset('assets/images/calendarwithcontainer.png', width: 48, height: 48),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0, right: 70),
                                            child: Text(
                                              '34',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 15.0,bottom: 15),
                                            child: Text(
                                              'Task in-progress',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                    ),



                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Row(

                  children: [
                    Expanded(
                        child:GestureDetector(
                onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const TaskOverdueListScreen(),
                ),
                );
                },
                          child: Container(
                            width: 170,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(color: AppColors.lightgreycolor),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 15.0, right: 50),
                                          child: Transform.scale(
                                            scale: 0.6, // Adjust the scale value as needed
                                            child: Image.asset('assets/images/calendarwithcontainer.png', width: 48, height: 48),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(top: 8.0, right: 50),
                                          child: Text(
                                            '21',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 15.0,bottom: 15),
                                          child: Text(
                                            'Task overdue',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                    ),
                    const SizedBox(width: 15,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                          child:GestureDetector(
                          onTap: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const ProblemTaskListScreen(),
                      ),
                      );
                      },
                            child: Container(
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: AppColors.lightgreycolor),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 15.0, right: 50),
                                            child: Transform.scale(
                                              scale: 0.6, // Adjust the scale value as needed
                                              child: Image.asset('assets/images/calendarwithcontainer.png', width: 48, height: 48),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(top: 8.0, right: 60),
                                            child: Text(
                                              '6',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 15.0,bottom: 15),
                                            child: Text(
                                              'Problem task',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                    ),



                  ],
                ),
              ),


SizedBox(height: 100,),
            ],
          ),
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
