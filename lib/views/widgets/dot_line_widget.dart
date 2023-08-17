import 'package:flutter/material.dart';

import 'const_color.dart';
class DotLineWidget extends StatefulWidget {
  const DotLineWidget({super.key});

  @override
  State<DotLineWidget> createState() => _DotLineWidgetState();
}

class _DotLineWidgetState extends State<DotLineWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: SizedBox(
        width: double.infinity,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final boxWidth = constraints.constrainWidth();
            const dashWidth = 7.0;
            final dashHeight = 1.0;
            final dashCount = (boxWidth / (2 * dashWidth)).floor();
            return Flex(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              direction: Axis.horizontal,
              children: List.generate(dashCount, (_) {
                return SizedBox(
                  width: dashWidth,
                  height: dashHeight,
                  child: const DecoratedBox(
                    decoration: BoxDecoration(color: AppColors.bluegreycolor),
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
