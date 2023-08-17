import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/toggle_checked_box.dart';

class ReviewWidget extends StatelessWidget {
  
  const ReviewWidget({super.key});

  @override
  
  Widget build(BuildContext context) {
    String selectedValue = 'version 1';
    return Column(
      children: [
        SizedBox(
          height: 140, // Set a specific height
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFE6E6E6),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,),
                            child: ToggleableCheckBox(
                              borderColor: Colors.white,),
                          ),
                          SizedBox(width: 10,),
                          Text('Research',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Image.asset('assets/images/arrow-right.png'),
                      )
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Row(

                      children: [
                        Image.asset('assets/images/layer.png'),
                        SizedBox(width: 10,),
                        Text('Learning Management System',style: TextStyle(color: Color(0xFF5A5859),fontWeight: FontWeight.w400,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 43.0),
                        child: Text('progress',style: TextStyle(fontSize: 15),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text('100%',style: TextStyle(color: Color(0xFF5A5859),fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF5A5859)),

                      value: 1.0,
                      // Set the progress value here (0.0 to 1.0)
                    ),
                  ),
                ],)
              ],
            ),

          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 140, // Set a specific height
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFE6E6E6),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,),
                            child: ToggleableCheckBox(
                              borderColor: Colors.white,),
                          ),
                          SizedBox(width: 10,),
                          Text('Content',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Image.asset('assets/images/arrow-right.png'),
                      )
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Row(

                      children: [
                        Image.asset('assets/images/layer.png'),
                        SizedBox(width: 10,),
                        Text('Learning Management System',style: TextStyle(color: Color(0xFF5A5859),fontWeight: FontWeight.w400,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 43.0),
                        child: Text('progress',style: TextStyle(fontSize: 15),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text('100%',style: TextStyle(color: Color(0xFF5A5859),fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF5A5859)),

                      value: 1.0,
                      // Set the progress value here (0.0 to 1.0)
                    ),
                  ),
                ],)
              ],
            ),

          ),
        ),
        SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: Text('Finalized',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 1.0),
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
        SizedBox(height: 15,),
        SizedBox(
          height: 140, // Set a specific height
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFE6E6E6),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0,),
                            child: ToggleableCheckBox(
                              borderColor: Colors.white,),
                          ),
                          SizedBox(width: 10,),
                          Text('Marketing banner',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Image.asset('assets/images/arrow-right.png'),
                      )
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Row(

                      children: [
                        Image.asset('assets/images/layer.png'),
                        SizedBox(width: 10,),
                        Text('l-service',style: TextStyle(color: Color(0xFF5A5859),fontWeight: FontWeight.w400,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 43.0),
                        child: Text('progress',style: TextStyle(fontSize: 15),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 18.0),
                        child: Text('100%',style: TextStyle(color: Color(0xFF5A5859),fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF5A5859)),

                      value: 1.0,
                      // Set the progress value here (0.0 to 1.0)
                    ),
                  ),
                ],)
              ],
            ),

          ),
        ),


      ],
    );
  }

  void setState(Null Function() param0) {}
}


