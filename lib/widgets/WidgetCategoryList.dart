import 'package:StatusBackgroundDemo/model/ModelCategory.dart';
import 'package:StatusBackgroundDemo/model/ModelCategoryList.dart';
import 'package:StatusBackgroundDemo/widgets/WidgetCategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WidgetCategoryList extends StatelessWidget{
  List<ModelCategoryList> categoryList;
  Function _onSeeAllClicked;

  WidgetCategoryList(this.categoryList,this._onSeeAllClicked);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: categoryList.length,
        itemBuilder: (context,index){
          return WidgetCategory(categoryList[index].itemList, categoryList[index].title,_onSeeAllClicked,index);
        }),
    );
  }

}