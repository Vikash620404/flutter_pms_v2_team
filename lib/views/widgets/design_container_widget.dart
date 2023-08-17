import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/toggle_checked_box.dart';

import 'const_color.dart';

class DesignContainerWidget extends StatelessWidget {
  const DesignContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
                          const Text('Mobile app design',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

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
                        const Text('l-service project',style: TextStyle(color: AppColors.deepgreycolor,fontWeight: FontWeight.w400,fontSize: 15),)
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
                        child: Text('60%',style: TextStyle(color: AppColors.deepgreycolor,fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: AppColors.greycolor,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.deepgreycolor),

                      value: 0.6,
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
                              borderColor:AppColors.whitecolor,),
                          ),
                          const SizedBox(width: 10,),
                          const Text('Testing design',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

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
                        const Text('Tiffin Delivery',style: TextStyle(color: AppColors.deepgreycolor,fontWeight: FontWeight.w400,fontSize: 15),)
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
                        child: Text('40%',style: TextStyle(color: AppColors.deepgreycolor,fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: AppColors.greycolor,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.deepgreycolor),

                      value: 0.4,
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
                              borderColor:AppColors.whitecolor,),
                          ),
                          const SizedBox(width: 10,),
                          const Text('Development',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

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
                        const Text('l-service project',style: TextStyle(color: AppColors.deepgreycolor,fontWeight: FontWeight.w400,fontSize: 15),)
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
                        child: Text('90%',style: TextStyle(color: AppColors.deepgreycolor,fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: AppColors.greycolor,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.deepgreycolor),

                      value: 0.9,
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
                          const Text('Debugging',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

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
                        const Text('l-service project',style: TextStyle(color:AppColors.deepgreycolor,fontWeight: FontWeight.w400,fontSize: 15),)
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
                        child: Text('20%',style: TextStyle(color: AppColors.deepgreycolor,fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: AppColors.greycolor,
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.deepgreycolor),

                      value: 0.2,
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
}


