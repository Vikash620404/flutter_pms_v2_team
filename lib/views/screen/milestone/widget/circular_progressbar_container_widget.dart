import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';
import 'circular_progress_bar_widget.dart';

class CircularProgressBarContainerWidget extends StatefulWidget {
   CircularProgressBarContainerWidget({Key? key}) : super(key: key);

  @override
  _CircularProgressBarContainerWidgetState createState() =>
      _CircularProgressBarContainerWidgetState();
}

class _CircularProgressBarContainerWidgetState
    extends State<CircularProgressBarContainerWidget> {
  double progressValue = 0.02;
  String progressText = "0%";

  void updateProgress(double value, String text) {
    setState(() {
      progressValue = value;
      progressText = text;
    });
  }

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
          border: Border.all(color: AppColors.lightgreycolor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 50),
                  child: Text(
                    'MileStone Statistics',
                    style: TextStyle(
                        color: AppColors.blackcolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'l-service project',
                    style: TextStyle(color: AppColors.deepgreycolor),
                  ),
                )
              ],
            ),
            CircularProgressBar(
              value: progressValue,
              backgroundColor: AppColors.whitecolor,
              progressColor: AppColors.whitecolor,
              strokeWidth: 4,
              progressText: progressText,
            )
          ],
        ),
      ),
    );
  }
}



