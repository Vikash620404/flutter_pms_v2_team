import 'package:flutter/material.dart';

import 'const_color.dart';
import 'dot_line_widget.dart';

class InProgressContainerWidget extends StatefulWidget {
  final String text;
  final double max;

  const InProgressContainerWidget({Key? key, required this.text, required this.max})
      : super(key: key);

  @override
  _InProgressContainerWidgetState createState() => _InProgressContainerWidgetState();
}

class _InProgressContainerWidgetState extends State<InProgressContainerWidget> {
  bool isOpen = false;
  bool isChecked = false; // Define isChecked variable

  @override
  @override
  Widget build(BuildContext context) {
    return Visibility(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.lightgreycolor,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 5.0),
                  child: isOpen
                      ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: widget.text,
                            style: const TextStyle(
                              fontSize: 16,
                              color: AppColors.greycolor,
                            ),
                          ),
                          WidgetSpan(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  isOpen = !isOpen;
                                });
                              },
                              child: const Text(
                                " View less",
                                style: TextStyle(

                                  fontWeight: FontWeight.bold,
                                  color: AppColors.greycolor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                      : Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: RichText(
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "${widget.text.substring(
                                0,
                                (widget.text.length * widget.max)
                                    .toInt())}...",
                            style: const TextStyle(
                              fontSize: 16,
                              color: AppColors.greycolor,
                            ),
                          ),
                          WidgetSpan(
                            child: InkWell(
                              mouseCursor: SystemMouseCursors.click,
                              onTap: () {
                                setState(() {
                                  isOpen = !isOpen;
                                });
                              },
                              child: const Text(
                                " View more",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:AppColors.greycolor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.greycolor),
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        child: isChecked
                            ? const Center(
                          child: Icon(
                            Icons.check,
                            color: AppColors.blackcolor,
                          ),
                        )
                            : null,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const DotLineWidget(),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    // New Row for image and text
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Image.asset("assets/images/timer.png"),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "Due in 6 days",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.greycolor,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        color: AppColors.whitecolor,
                        borderRadius: BorderRadius.circular(13.0),
                        border: Border.all(
                          color: AppColors.greycolor, // Set the desired border color
                          width: 1.0, // Set the border width
                        ),
                      ),
                      child: const Center(
                          child: Text('pending',
                              style: TextStyle(fontWeight: FontWeight.w400))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25.0, top: 25),
                child: InProgressContainerWidget(
                  text: "Your long text goes here...",
                  max: 0.5, // Adjust the value to control text expansion
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
