import 'package:flutter/material.dart';
import 'package:flutter_pms_v2_team/views/widgets/const_color.dart';



class AllProjectContainerWidget2 extends StatefulWidget {
  final String text;
  final double max;

  const AllProjectContainerWidget2({Key? key, required this.text, required this.max})
      : super(key: key);

  @override
  _AllProjectContainerWidget2State createState() => _AllProjectContainerWidget2State();
}

class _AllProjectContainerWidget2State extends State<AllProjectContainerWidget2> {
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
            const Padding(
              padding: EdgeInsets.only(left: 25.0,top: 10),
              child: Text('Description:',style: TextStyle(color: Colors.grey),),
            ),
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 5.0),
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
                              fontSize: 15,
                              color: AppColors.deepgreycolor,
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
                                "Read less",
                                style: TextStyle(

                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackcolor,
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
                        horizontal: 10.0, vertical: 10.0),
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
                              fontSize: 15,
                                color: AppColors.deepgreycolor,
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
            const SizedBox(height: 10),

            const SizedBox(height: 15),

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
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 25),
                child: AllProjectContainerWidget2(
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
