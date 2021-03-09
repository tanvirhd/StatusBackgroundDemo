import 'package:StatusBackgroundDemo/model/ModelCategory.dart';
import 'package:flutter/cupertino.dart';

import 'WidgerCategoryItem.dart';

class WidgetCategoryItemList extends StatelessWidget{
  List<ModelCategory> categoryItemList;

  WidgetCategoryItemList(this.categoryItemList);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12),
      child: GridView.count(
        crossAxisCount: 4,
        children: List.generate(categoryItemList.length, (index){
          return WidgerCategoryItem(categoryItemList[index].id, categoryItemList[index].picURL);
        })
      )
    );
  }

}