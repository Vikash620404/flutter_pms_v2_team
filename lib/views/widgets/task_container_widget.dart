import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/toggle_checked_box.dart';

class TaskContainer extends StatefulWidget {
  @override
  _TaskContainerState createState() => _TaskContainerState();
}

class _TaskContainerState extends State<TaskContainer> {
  bool isContainer1Selected = false;
  bool isContainer2Selected = false;
  bool isContainer3Selected = false;

  void _toggleContainerColor(int containerIndex) {
    setState(() {
      if (containerIndex == 1) {
        isContainer1Selected =!isContainer1Selected;
       isContainer2Selected = false;
        isContainer3Selected = false;
      } else if (containerIndex == 2) {
        isContainer1Selected = false;
       isContainer2Selected = !isContainer2Selected;
        isContainer3Selected = false;
      } else if (containerIndex == 3) {
        isContainer1Selected = false;
      isContainer2Selected = false;
        isContainer3Selected = !isContainer3Selected;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            _toggleContainerColor(1);
          },
          child: Container(
            height: 165,
            width: 190,
            decoration: BoxDecoration(
              color: isContainer1Selected ? Color(0xFFC6C6C6) : Color(0xFFE6E6E6),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0,top: 18),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Transform.scale(
                          scale: 0.7, // Adjust the scale factor as needed
                          child: Image.asset('assets/images/message_icon.png'),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("All Task",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFFFFFFFF),fontSize: 18),)

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: Text("60 task",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Color(0xFFFFFFFF)),),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,left: 23),
                  child: Row(
                    children: [
                      ToggleableCheckBox(),
                      SizedBox(width: 10,),
                      Text("26/60 completed",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Color(0xFFFFFFFF)),),
                    ],

                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Text("10th Apr-20th Apr",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15,color: Color(0xFFFFFFFF)),),
                ),

              ],
            ),
            // ... rest of the container's content
          ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            _toggleContainerColor(2);
          },
          child: Container(
            height: 165,
            width: 190,
            decoration: BoxDecoration(
              color: isContainer2Selected ? Color(0xFFC6C6C6) : Color(0xFFE6E6E6),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0,top: 18),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFFC6C6C6),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Transform.scale(
                          scale: 0.8, // Adjust the scale factor as needed
                          child: Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: Image.asset('assets/images/ui_update_icon.png'),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("UI Update",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF5A5859),fontSize: 18),)

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: Text("6 task",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Color(0xFF5A5859)),),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,left: 23),
                  child: Row(
                    children: [
                      ToggleableCheckBox(),
                      SizedBox(width: 10,),
                      Text("6/6 completed",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Color(0xFF5A5859)),),
                    ],

                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 35.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("10th Apr-20th Apr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Color(0xFF5A5859)),),
                  ),
                ),

              ],
            ),
            // ... rest of the container's content
          ),
        ),
        SizedBox(width: 20),
        GestureDetector(
          onTap: () {
            _toggleContainerColor(3);
          },
          child: Container(
            height: 165,
            width: 190,
            decoration: BoxDecoration(
              color: isContainer3Selected ? Color(0xFFC6C6C6) : Color(0xFFE6E6E6),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18.0,top: 18),
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Color(0xFFC6C6C6),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Transform.scale(
                          scale: 0.8, // Adjust the scale factor as needed
                          child: Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: Image.asset('assets/images/ui_update_icon.png'),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text("UI Update",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF5A5859),fontSize: 18),)

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 100.0),
                  child: Text("6 task",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Color(0xFF5A5859)),),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0,left: 23),
                  child: Row(
                    children: [
                      ToggleableCheckBox(),
                      SizedBox(width: 10,),
                      Text("6/6 completed",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Color(0xFF5A5859)),),
                    ],

                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 35.0),
                  child: Text("10th Apr-20th Apr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Color(0xFF5A5859)),),
                ),

              ],
            ),
            // ... rest of the container's content
          ),
        ),
      ],
    );
  }
}
