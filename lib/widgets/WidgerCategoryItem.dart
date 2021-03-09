import 'package:flutter/cupertino.dart';

class WidgerCategoryItem extends StatelessWidget{
  String _id;
  String _url;

  WidgerCategoryItem(this._id, this._url);

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(right: 12,bottom: 12),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            _url,
            height: 75,
            width: 75,
            fit: BoxFit.fill,
          )),
    );
  }

}