// import 'package:flutter/material.dart';
// import '../../../widgets/const_color.dart';
// import '../../profile_screen/profile_screen1.dart';
// import '../../project_screen/project_screen.dart';
// import '../../select/select_project_screen.dart';
// import '../../task/performance_screen.dart';
// import '../front_home_page.dart';
//  // Import your screen files
//
// class BottomNavigatonBar extends StatefulWidget {
//   const BottomNavigatonBar({Key? key});
//
//   @override
//   _BottomNavigatonBarState createState() =>
//       _BottomNavigatonBarState();
// }
//
// class _BottomNavigatonBarState
//     extends State<BottomNavigatonBar> {
//   int selectedIndex = 0;
//
//   // Define a list of routes to navigate to
//   final List<Widget> _screens = [
//     const FrontHomePage(), // Replace with your screen widgets
//     const ProjectScreen(),
//     const PerformanceScreen(),
//     const ProfileScreen1(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 90, // Adjust the height as needed
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           Transform.translate(
//             offset: const Offset(0, 25), // Adjust this value to move the content up
//             child: Container(
//               color: AppColors.mediumgrey,
//               height: 75, // Adjust the height as needed
//               width: double.infinity,
//               child: BottomAppBar(
//                 color: AppColors.whitecolor,
//                 shape: const CircularNotchedRectangle(),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     buildMenuItem(
//                       'assets/images/home-2.png',
//                       'Home',
//                       0,
//                     ),
//                     buildMenuItem(
//                       'assets/images/projectIcon.png',
//                       'Project',
//                       1,
//                     ),
//                     buildMenuItem(
//                       'assets/images/graph.png',
//                       'Performance',
//                       2,
//                     ),
//                     buildMenuItem(
//                       'assets/images/profile-circle.png',
//                       'Profile',
//                       3,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 30, // Adjust this value to position the button
//             child: Container(
//               width: 50.0, // Adjust the width and height as needed
//               height: 60.0,
//               decoration: BoxDecoration(
//                 color: AppColors.whitecolor,
//                 shape: BoxShape.circle,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.3),
//                     blurRadius: 5.0,
//                     offset: const Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: FloatingActionButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const SelectProjectScreen()), // Navigate to SelectProjectScreen
//                   );
//                 },
//                 backgroundColor: AppColors.whitecolor,
//                 elevation: 0.0,
//                 child: const Icon(
//                   Icons.add,
//                   color: AppColors.blackcolor,
//                   size: 30.0,
//                 ),
//               ),
//
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildMenuItem(String imagePath, String label, int index) {
//     final isSelected = selectedIndex == index;
//
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           if (isSelected) {
//             selectedIndex = -1;
//           } else {
//             selectedIndex = index;
//           }
//         });
//
//         // Navigate to the corresponding screen
//         if (index < _screens.length) {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => _screens[index]),
//           );
//         }
//       },
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Image.asset(
//             imagePath, // Replace with the image path.
//             width: 24.0,
//             height: 24.0,
//           ),
//           if (isSelected)
//             Text(
//               label,
//               style: const TextStyle(color: AppColors.blackcolor), // Change to black color.
//             ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/screen/select/select_project_screen.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

import '../../profile_screen/profile_screen1.dart';
import '../../project_screen/project_screen.dart';
import '../../task/performance_screen.dart';
import '../front_home_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BottomNavigationBar(

          currentIndex: _currentIndex,
          showSelectedLabels: true, // Added this line
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });

            switch (index) {
              case 0:
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const FrontHomePage(),
                ));
                break;
              case 1:
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const ProjectScreen(),
                ));
                break;
              case 2:
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const PerformanceScreen(),
                ));
                break;
              case 3:
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const ProfileScreen1(),
                ));
                break;
            }
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: AppColors.greycolor,
              icon: Image.asset(
                'assets/images/home-2.png',
                width: 30,
                height: 30,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.greycolor,
              icon: Image.asset(
                'assets/images/projectIcon.png',
                width: 30,
                height: 30,
              ),
              label: 'Projects',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.greycolor,
              icon: Image.asset(
                'assets/images/graph.png',
                width: 30,
                height: 30,
              ),
              label: 'Performance',
            ),
            BottomNavigationBarItem(
              backgroundColor: AppColors.greycolor,
              icon: Image.asset(
                'assets/images/profile-circle.png',
                width: 30,
                height: 30,
              ),
              label: 'Profile',
            ),
          ],
          selectedItemColor: AppColors.deepgreycolor, // Set the selected item color
        ),
        Positioned(
          bottom: 35, // Adjusted to 0
          left: MediaQuery.of(context).size.width / 2 - 5, // Centered horizontally with a slight offset
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SelectProjectScreen(),
                ),
              );
            },
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: const Center(
                child: Icon(
                  Icons.add,
                  size: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
