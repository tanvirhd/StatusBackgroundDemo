import 'package:flutter/cupertino.dart';
import 'package:StatusBackgroundDemo/widgets/WidgetColorPick.dart';
import 'package:StatusBackgroundDemo/widgets/WidgetBackgroundImagePick.dart';

class WidgetColorAndBgPicker extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ColorPick(),
        WidgetBackgroundImagePick()
      ],
    );
  }

}