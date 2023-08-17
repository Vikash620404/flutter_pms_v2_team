import 'package:flutter/material.dart';

import 'const_color.dart';

class MobileAppDesignScreenWidget extends StatefulWidget {
  final String text;
  final double max;

  const MobileAppDesignScreenWidget({
    Key? key,
    required this.text,
    required this.max,
  }) : super(key: key);

  @override
  _MobileAppDesignScreenWidgetState createState() =>
      _MobileAppDesignScreenWidgetState();
}

class _MobileAppDesignScreenWidgetState
    extends State<MobileAppDesignScreenWidget> {
  bool isOpen = false;
  bool isChecked = false; // Define isChecked variable

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.bluegreycolor,
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
                            decoration: TextDecoration.lineThrough,
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
                            decoration: TextDecoration.lineThrough,
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
                                color: AppColors.greycolor,
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
                          color: AppColors.greycolor,
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
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: SizedBox(
              width: double.infinity,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  final boxWidth = constraints.constrainWidth();
                  const dashWidth = 7.0;
                  const dashHeight = 1.0;
                  final dashCount = (boxWidth / (2 * dashWidth)).floor();
                  return Flex(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    direction: Axis.horizontal,
                    children: List.generate(dashCount, (_) {
                      return const SizedBox(
                        width: dashWidth,
                        height: dashHeight,
                        child: DecoratedBox(
                          decoration: BoxDecoration(color: AppColors.bluegreycolor),
                        ),
                      );
                    }),
                  );
                },
              ),
            ),
          ),
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
                      child: Image.asset("assets/images/calendar.png"),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "August 20th 2023",
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
                        color: AppColors.bluegreycolor, // Set the desired border color
                        width: 1.0, // Set the border width
                      ),
                    ),
                    child: const Center(
                        child: Text('Completed',
                            style: TextStyle(fontWeight: FontWeight.w400))),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
