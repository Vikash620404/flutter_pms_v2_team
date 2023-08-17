import 'package:flutter/cupertino.dart';
import '../../project_screen/widget/all_project_widget.dart';
import 'list_container_widget.dart';


List<Widget> myContainer() {
  return List.generate(4, (index) {
    return ListContainerWidget(mode: (index % 4) + 1);
  });
}
