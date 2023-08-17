import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';

import '../../milestone/widget/circular_progress_bar_widget.dart';

class ProjectStatisticsWidget extends StatelessWidget {
  const ProjectStatisticsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, top: 20),
      child: Container(
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.bluegreycolor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color:AppColors.lightgreycolor),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 50),
                  child: Text(
                    'Version 2 Statistics',
                    style: TextStyle(
                        color: AppColors.blackcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ),
                SizedBox(height: 15),
               Padding(
                 padding: EdgeInsets.only(left: 15.0),
                 child: Text('l-service project',style: TextStyle(color: AppColors.greycolor),),
               )
              ],
            ),
            CircularProgressBar(
              value: 0.02,
              backgroundColor: AppColors.whitecolor,
              progressColor: AppColors.whitecolor,
              strokeWidth: 4,
              progressText: "0%",

            )
          ],
        ),
      ),
    );
  }
}

class ProjectStatusWidget extends StatelessWidget {
  final Color color;
  final String label;

  const ProjectStatusWidget({super.key, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        children: [
          Container(
            height: 10,
            width: 10,
            color: color,
          ),
          const SizedBox(width: 10),
          Text(
            label,
            style: const TextStyle(
                color: AppColors.deepgreycolor,
                fontWeight: FontWeight.w600,
                fontSize: 13),
          )
        ],
      ),
    );
  }
}

