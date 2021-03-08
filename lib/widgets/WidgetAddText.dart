import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetAddText extends StatelessWidget{
  final double height;
  WidgetAddText(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: double.infinity,
        alignment: Alignment.center,
        child: new Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/images/bg1.png',
                fit: BoxFit.fill,
              height: height,
              width: double.infinity,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  border: InputBorder.none
              ),
              style: TextStyle(fontFamily: 'RobotoCondensed',fontSize: 28,fontWeight: FontWeight.bold,color:Color(0xffffffff)),
            ),
          ],
        )
    );
  }

}