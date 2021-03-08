import 'package:flutter/cupertino.dart';

class WidgetBackgroundImagePick extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 8),
            height: 32,
            width: 32,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset('assets/images/bg1.png',
                  fit: BoxFit.fill,
                )
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 8),
            height: 32,
            width: 32,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset('assets/icons/ic_colorpicker.png',
                  fit: BoxFit.fill,
                )
            ),
          ),
          Container(
            height: 32,
            width: 32,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset('assets/icons/ic_unfold.png',
                    fit: BoxFit.fill,
                )
            ),
          ),
        ],
      ),
    );
  }
}