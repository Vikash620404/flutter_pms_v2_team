import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/toggle_checked_box.dart';
import 'package:flutter_pms_v2_team/views/widgets/segmented_control%20button.dart';

import '../widgets/status_container_widget.dart';
import '../widgets/task_container_widget.dart';

class FrontHomePage extends StatefulWidget {
  const FrontHomePage({Key? key}) : super(key: key);

  @override
  State<FrontHomePage> createState() => _FrontHomePageState();
}

class _FrontHomePageState extends State<FrontHomePage> {
  int _selectedIndex = 0; // Index for the selected segment

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 125.0),
                          child: Flexible(
                            child: Text(
                              "Today",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Monday, 20 May 2023",
                            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20, color: Colors.black87),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Color(0xFFE6E6E6)),
                      ),
                      child: SizedBox(
                        height: 15,
                        width: 15,
                        child: Transform.scale(
                            scale: 0.7,
                            child: Image.asset('assets/images/bellicon.jpg')),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Add the segmented control here

              SegmentedControl(),

              SizedBox(height: 25,),

              Padding(
                padding: const EdgeInsets.only(left: 13.0),
                child: SizedBox(
                  height: 175,
                  // width: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 1, // Replace with the actual number of items
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0), // Adjust horizontal spacing
                        child: TaskContainer(), // Use your TaskContainer widget
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Align(
                  alignment: Alignment.centerLeft,

                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text("Work Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 13.0,right: 13.0),
                child: SizedBox(
                  height: 350,
                  //  width: 800,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    // scrollDirection: Axis.horizontal,
                    itemCount: 1, // Replace with the actual number of items
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0), // Adjust horizontal spacing
                        child: StatusContainerWidget(), // Use your TaskContainer widget
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
        onPressed: () {},
        backgroundColor: Color(0xFFFFFFFF),
        child: const Icon(Icons.add,color: Color(0xFF5A5859) ,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFE6E6E6),
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
                Text('Home'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message),
                ),
                Text('Messages'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarms_rounded),
                ),
                Text('Alarms'),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle),
                ),
                Text('Profile'),
              ],
            ),
          ],
        ),
      ),


    );
  }
}
