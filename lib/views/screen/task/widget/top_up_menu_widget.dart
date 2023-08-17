import 'package:flutter/material.dart';

import '../../../widgets/global_app_color_widget.dart';





class TPopupMenu extends StatefulWidget {
  const TPopupMenu({Key? key}) : super(key: key);

  @override
  State<TPopupMenu> createState() => _TPopupMenuState();
}

class _TPopupMenuState extends State<TPopupMenu> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.centerRight,
        child: PopupMenuButton<int>(icon: Image.asset('assets/images/more.png'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: popupBorderColor)),
          surfaceTintColor: boxShadowColor,
          onSelected: (item) => handleClick(item),
          itemBuilder: (context) => [
            PopupMenuItem<int>(
                value: 0,
                child: Row(
                  children: [
                    Image.asset('assets/images/edit-2.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text('Edit suggestion'),
                  ],
                )),
            PopupMenuItem<int>(
                value: 1,
                child: Row(
                  children: [
                    Image.asset('assets/images/trash.png'),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text('Delete suggestion'),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  void handleClick(int item) {
    switch (item) {
      case 0:
        debugPrint("");
        break;
      case 1:
        debugPrint("");
        break;
    }
  }
}