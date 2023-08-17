import 'package:flutter/material.dart';

import '../../../widgets/const_color.dart';

import 'circle_check_box.dart';

class Home3ContainerWidget extends StatefulWidget {
  final String text;
  final double max;

  const Home3ContainerWidget({
    Key? key,
    required this.text,
    required this.max,
  }) : super(key: key);

  @override
  _Home3ContainerWidgetState createState() => _Home3ContainerWidgetState();
}

class _Home3ContainerWidgetState extends State<Home3ContainerWidget> {
  bool isOpen = false;
  bool isChecked = false; // Define isChecked variable

  @override
  Widget build(BuildContext context) {
    return Container(

      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.bluegreycolor, // Set the background color to grey
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(

        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              const Positioned(
                top: 35.0,
                left: 20.0,
                child: RoundedCheckboxButton(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, top: 10.0),
                child: isOpen
                    ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 15.0,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: widget.text,
                          style: const TextStyle(
                            fontSize: 15,
                            color: AppColors.deepgreycolor,
                            decoration: TextDecoration.lineThrough, // Add this line
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
                              " Read less",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.blackcolor,
                                decoration: TextDecoration.none, // Remove decoration
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
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  child: RichText(
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "${widget.text.substring(0, (widget.text.length * widget.max).toInt())}...",
                          style: const TextStyle(
                            fontSize: 15,
                            color:AppColors.deepgreycolor,
                            decoration: TextDecoration.lineThrough, // Add this line
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
                              "Read more",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.blackcolor,
                                decoration: TextDecoration.none, // Remove decoration
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 55.0,bottom: 30.0),
            child: Row(
              children: [
                Image.asset('assets/images/two_man_icon.png'),
                const SizedBox(width: 10,),
                const Text('Vikaram Jha'),
                const SizedBox(width: 20,),
                const Text('Due in 10 days'),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
