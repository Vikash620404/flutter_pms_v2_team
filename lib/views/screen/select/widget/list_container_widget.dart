import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';
import 'package:flutter_pms_v2_team/views/widgets/toggle_checked_box.dart';

class ListContainerWidget extends StatelessWidget {
  final int mode;

  const ListContainerWidget({Key? key, required this.mode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (mode) {
      case 1:
        return Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.whitecolor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xFFDFDCDC)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, // Align columns at the top
              children: [
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        right: 18,
                        top: 15.0, // Add top padding here
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: CircularProgressIndicator(
                              backgroundColor: AppColors.greycolor,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.deepgreycolor),
                              value: 0.7,
                              strokeWidth: 3,
                            ),
                          ),
                          Text(
                            '75%',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.deepgreycolor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20), // Add some spacing between columns
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'l-service Project',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/3square.png'),
                              const SizedBox(width: 10),
                              const Flexible( // Use Flexible here
                                child: Text(
                                  '4 Version . Due in 60 days',
                                  style: TextStyle(
                                    color: AppColors.deepgreycolor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      case 2:
        return Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.whitecolor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xFFDFDCDC)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, // Align columns at the top
              children: [
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        right: 18,
                        top: 15.0, // Add top padding here
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: CircularProgressIndicator(
                              backgroundColor: AppColors.greycolor,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.deepgreycolor),
                              value: 0.5,
                              strokeWidth: 3,
                            ),
                          ),
                          Text(
                            '50%',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.deepgreycolor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20), // Add some spacing between columns
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'l-service Project',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/3square.png'),
                              const SizedBox(width: 10),
                              const Flexible( // Use Flexible here
                                child: Text(
                                  '4 Version . Overdue for 60 days',
                                  style: TextStyle(
                                    color: AppColors.deepgreycolor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      case 3:
        return Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.whitecolor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xFFDFDCDC)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, // Align columns at the top
              children: [
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        right: 18,
                        top: 15.0, // Add top padding here
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: CircularProgressIndicator(
                              backgroundColor: AppColors.greycolor,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.deepgreycolor),
                              value: 0.25,
                              strokeWidth: 3,
                            ),
                          ),
                          Text(
                            '25%',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.deepgreycolor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20), // Add some spacing between columns
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'l-service Project',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/3square.png'),
                              const SizedBox(width: 10),
                              const Flexible( // Use Flexible here
                                child: Text(
                                  '4 Version . Expected in 8 days',
                                  style: TextStyle(
                                    color: AppColors.deepgreycolor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      case 4:
        return Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.whitecolor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xFFDFDCDC)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, // Align columns at the top
              children: [
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20.0,
                        right: 18,
                        top: 15.0, // Add top padding here
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: CircularProgressIndicator(
                              backgroundColor: AppColors.greycolor,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.deepgreycolor),
                              value: 1.0,
                              strokeWidth: 3,
                            ),
                          ),
                          Text(
                            '100%',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: AppColors.deepgreycolor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20), // Add some spacing between columns
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'l-service Project',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Row(
                            children: [
                              Image.asset('assets/images/3square.png'),
                              const SizedBox(width: 10),
                              const Flexible( // Use Flexible here
                                child: Text(
                                  '4 Version . August 20th 2023',
                                  style: TextStyle(
                                    color: AppColors.deepgreycolor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 25),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );



      default:
        throw ArgumentError('Invalid mode: $mode');
    }
  }
}
