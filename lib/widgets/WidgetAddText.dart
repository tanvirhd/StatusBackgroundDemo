import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddText extends StatelessWidget{
  final appbar;

  AddText(this.appbar);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: (MediaQuery.of(context).size.height -
            appbar.preferredSize.height -
            MediaQuery.of(context).padding.top) * 0.5,
        width: double.infinity,
        alignment: Alignment.center,
        child: new Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/images/bg1.png',
                fit: BoxFit.fill,
                width: double.infinity,
                height:(MediaQuery.of(context).size.height - appbar.preferredSize.height - MediaQuery.of(context).padding.top) * 0.5),
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