import 'package:flutter/cupertino.dart';

import '../../../widgets/const_color.dart';

class StatusContainerWidget extends StatelessWidget {
  const StatusContainerWidget({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 400,
          child: ListView.builder(
            physics: AlwaysScrollableScrollPhysics(),
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: AppColors.bluegreycolor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              const Flexible(
                                child: Text(
                                  "April milestone1",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.deepgreycolor,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Image.asset('assets/images/flag.png'),
                                  const SizedBox(width: 10,),
                                  const Flexible(
                                    child: Text(
                                      'Redesign application',
                                      style: TextStyle(
                                        color: AppColors.deepgreycolor,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const SizedBox(width: 20,),

                                  const Flexible(
                                    child: Text(
                                      'Expected in 8 days',
                                      style: TextStyle(
                                        color: AppColors.deepgreycolor,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
