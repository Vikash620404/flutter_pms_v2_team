import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/review_screen.dart';
import 'package:flutter_pms_v2_team/views/widgets/design_container_widget.dart';

import '../widgets/segmented_control button.dart';
import '../widgets/status_container_widget.dart'; // Make sure to import the correct file path for your SegmentedControlButton

class DesignScreen extends StatefulWidget {
  const DesignScreen({super.key});

  @override
  State<DesignScreen> createState() => _DesignScreenState();
}

class _DesignScreenState extends State<DesignScreen> {
  String selectedValue = 'version 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
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
                    SizedBox(width: 10,),
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
                            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15, color: Colors.black87),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
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
              SegmentedControl(),
              SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Text('Task',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 21.0),
                    child: Container(
                      height: 35,
                      width: 100, // Adjust the width as needed
                      decoration: BoxDecoration(
                        color: Color(0xFFC6C6C6),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Row(
                        children: [

                          Spacer(), // Spacer widget takes up available space between text and button
                          DropdownButton<String>(
                            value: selectedValue, // Set the selected value here
                            items: <String>['version 1', 'version 2', 'version 3'].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              if (newValue != null) {
                                setState(() {
                                  selectedValue = newValue; // Update the selected value
                                });
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 13.0,right: 13.0),
                child: SizedBox(
                  height: 750,
                  //  width: 800,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    // scrollDirection: Axis.horizontal,
                    itemCount: 1, // Replace with the actual number of items
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0), // Adjust horizontal spacing
                        child: DesignContainerWidget(), // Use your TaskContainer widget
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReviewScreen()), // Assuming LoginScreen is the name of your screen
          );
        },
        backgroundColor: const Color(0xFFFFFFFF),
        child: const Icon(Icons.add,color: Color(0xFF5A5859) ,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xFFE6E6E6),
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.home),
                ),
                const Text('Home'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                ),
                const Text('Messages'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarms_rounded),
                ),
                const Text('Alarms'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle),
                ),
                const Text('Profile'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
