import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/design_screen.dart';
import 'package:flutter_pms_v2_team/views/widgets/home_page2_widget.dart';
import 'package:flutter_pms_v2_team/views/widgets/segmented_control%20button.dart';

import '../widgets/status_container_widget.dart';
import '../widgets/task_container_widget.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
// Index for the selected segment

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
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
              const SizedBox(height: 20),
              // Add the segmented control here

              const SegmentedControl(),

              const SizedBox(height: 25,),

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
                        padding: const EdgeInsets.symmetric(horizontal: 8.0), // Adjust horizontal spacing
                        child: TaskContainer(), // Use your TaskContainer widget
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              const Align(
                  alignment: Alignment.centerLeft,

                  child: Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: Text("Work Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  )),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 13.0,right: 13.0),
                child: SizedBox(
                  height: 350,
                  //  width: 800,
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    // scrollDirection: Axis.horizontal,
                    itemCount: 1, // Replace with the actual number of items
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0), // Adjust horizontal spacing
                        child: HomePage2Widget(), // Use your TaskContainer widget
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
            MaterialPageRoute(builder: (context) => DesignScreen()), // Assuming LoginScreen is the name of your screen
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
