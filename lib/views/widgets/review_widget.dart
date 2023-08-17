import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/toggle_checked_box.dart';

import 'const_color.dart';

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
              color: AppColors.bluegreycolor,
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
                              borderColor: AppColors.whitecolor,),
                          ),
                          const SizedBox(width: 10,),
                          const Text('Research',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

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
                        const SizedBox(width: 10,),
                        const Text('Learning Management System',style: TextStyle(color: AppColors.deepgreycolor,fontWeight: FontWeight.w400,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                const Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 43.0),
                        child: Text('progress',style: TextStyle(fontSize: 15),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 18.0),
                        child: Text('100%',style: TextStyle(color:AppColors.deepgreycolor,fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: AppColors.greycolor,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.deepgreycolor),

                      value: 1.0,
                      // Set the progress value here (0.0 to 1.0)
                    ),
                  ),
                ],)
              ],
            ),

          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 140, // Set a specific height
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.bluegreycolor,
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
                              borderColor: AppColors.whitecolor,),
                          ),
                          const SizedBox(width: 10,),
                          const Text('Content',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

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
                        const SizedBox(width: 10,),
                        const Text('Learning Management System',style: TextStyle(color: AppColors.deepgreycolor,fontWeight: FontWeight.w400,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                const Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 43.0),
                        child: Text('progress',style: TextStyle(fontSize: 15),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 18.0),
                        child: Text('100%',style: TextStyle(color: AppColors.deepgreycolor,fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: AppColors.greycolor,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.deepgreycolor),

                      value: 1.0,
                      // Set the progress value here (0.0 to 1.0)
                    ),
                  ),
                ],)
              ],
            ),

          ),
        ),
        const SizedBox(height: 35),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 6.0),
              child: Text('Finalized',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 1.0),
              child: Container(
                height: 35,
                width: 100, // Adjust the width as needed
                decoration: BoxDecoration(
                  color: AppColors.bluegreycolor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [

                    const Spacer(), // Spacer widget takes up available space between text and button
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
        const SizedBox(height: 15,),
        SizedBox(
          height: 140, // Set a specific height
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.bluegreycolor,
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
                              borderColor: AppColors.whitecolor,),
                          ),
                          const SizedBox(width: 10,),
                          const Text('Marketing banner',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

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
                        const SizedBox(width: 10,),
                        const Text('l-service',style: TextStyle(color: AppColors.deepgreycolor,fontWeight: FontWeight.w400,fontSize: 15),)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                const Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 43.0),
                        child: Text('progress',style: TextStyle(fontSize: 15),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 18.0),
                        child: Text('100%',style: TextStyle(color: AppColors.deepgreycolor,fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: AppColors.greycolor,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.deepgreycolor),

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


