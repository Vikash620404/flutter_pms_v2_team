import 'package:flutter/material.dart';

import '../../widgets/const_color.dart';
import '../task/widget/header_widget2.dart';
    class ImageScreen extends StatefulWidget {
      const ImageScreen({super.key});

      @override
      State<ImageScreen> createState() => _ImageScreenState();
    }

    class _ImageScreenState extends State<ImageScreen> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HeaderWidget2(text1: 'Create task',),
                  Column(
                    children: [
                      Container(
                        color: AppColors.bluegreycolor,
                        height: 400,
                      ),
                      SizedBox(height: 30,),
                      Container(
                        height: 50,
                        width: 160,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.lightgreycolor, // Border color
                          ),
                          borderRadius: BorderRadius.circular(10.0), // Circular corners
                        ),
                        child: Expanded(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Image.asset('assets/images/import.png'),
                              ),
                              SizedBox(width: 10,),
                              Flexible(child: Text('Download Image')),
                            ],
                          ),
                        ),
                      )

                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }
    }
