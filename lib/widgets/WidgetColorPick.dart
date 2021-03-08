import 'package:flutter/cupertino.dart';

class ColorPick extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12),
      child: Row(
        children: [
          Container(
            height: 32,
            width: 32,
            margin: EdgeInsets.only(right: 8),
            child: Text(""),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 0.5,color: Color(0xfff0f0f0)),
              color: Color(0xffffffff),
            ),
          ),
          Container(
            height: 32,
            width: 32,
            margin: EdgeInsets.only(right: 8),
            child: Text(""),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff000000),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset('assets/icons/ic_colorpicker.png',
                fit: BoxFit.fill,
                width: 32,
                height:32
            )
          )
        ],
      ),
    );
  }

}