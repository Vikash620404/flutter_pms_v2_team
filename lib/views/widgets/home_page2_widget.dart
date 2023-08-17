import 'package:flutter/material.dart';

class HomePage2Widget extends StatelessWidget {
  const HomePage2Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 130, // Set a specific height
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFE6E6E6),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("April milestone1", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF5A5859))),
                      SizedBox(height: 10),
                      Text('Redesign application', style: TextStyle(color: Color(0xFF5A5859))),
                      SizedBox(height: 30),

                      Row(
                        children: [
                          Image.asset('assets/images/timer.png'),
                          SizedBox(width: 10,),
                          Text('Due in 20 days', style: TextStyle(color: Color(0xFF5A5859))),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0, top: 20),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              value: 0.75,
                              backgroundColor: Color(0xFFFFFFFF),
                              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF5A5859)),
                              strokeWidth: 3,
                            ),
                          ),
                          Text("75%", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF5A5859))),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 18.0, top: 25),
                      child:Container(
                        height: 25,
                        width: 100,
                        child: Center(child: Text('In progress', style: TextStyle(fontWeight: FontWeight.w500))),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 130, // Set a specific height
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFFE6E6E6),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("April milestone1", style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF5A5859))),
                      SizedBox(height: 10),
                      Text('Redesign application', style: TextStyle(color: Color(0xFF5A5859))),
                      SizedBox(height: 30),

                      Row(
                        children: [
                          Image.asset('assets/images/timer.png'),
                          SizedBox(width: 10,),
                          Text('Due in 20 days', style: TextStyle(color: Color(0xFF5A5859))),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 18.0, top: 20),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              value: 0.01,
                              backgroundColor: Color(0xFFFFFFFF),
                              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF5A5859)),
                              strokeWidth: 3,
                            ),
                          ),
                          Text("0%", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF5A5859))),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 18.0, top: 25),
                      child:Container(
                        height: 25,
                        width: 100,
                        child: Center(child: Text('In progress', style: TextStyle(fontWeight: FontWeight.w500))),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(13.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


