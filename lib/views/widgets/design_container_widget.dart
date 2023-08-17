import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/toggle_checked_box.dart';

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
                          Text('Mobile app design',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

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
                        Text('l-service project',style: TextStyle(color: Color(0xFF5A5859),fontWeight: FontWeight.w400,fontSize: 15),)
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
                        child: Text('60%',style: TextStyle(color: Color(0xFF5A5859),fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF5A5859)),

                      value: 0.6,
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
                          Text('Testing design',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

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
                        Text('Tiffin Delivery',style: TextStyle(color: Color(0xFF5A5859),fontWeight: FontWeight.w400,fontSize: 15),)
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
                        child: Text('40%',style: TextStyle(color: Color(0xFF5A5859),fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF5A5859)),

                      value: 0.4,
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
                          Text('Development',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

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
                        Text('l-service project',style: TextStyle(color: Color(0xFF5A5859),fontWeight: FontWeight.w400,fontSize: 15),)
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
                        child: Text('90%',style: TextStyle(color: Color(0xFF5A5859),fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF5A5859)),

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
                          Text('Debugging',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),)

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
                        Text('l-service project',style: TextStyle(color: Color(0xFF5A5859),fontWeight: FontWeight.w400,fontSize: 15),)
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
                        child: Text('20%',style: TextStyle(color: Color(0xFF5A5859),fontSize: 15,fontWeight: FontWeight.w600),),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 43.0,right: 18,top: 12),
                    child: LinearProgressIndicator(

                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF5A5859)),

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


