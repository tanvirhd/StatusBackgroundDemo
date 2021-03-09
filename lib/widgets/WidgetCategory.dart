import 'dart:ui';

import 'package:StatusBackgroundDemo/model/ModelCategory.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';

class WidgetCategory extends StatelessWidget {
  List<ModelCategory> itemlist;
  String title;
  Function _seeAllClicked;
  int index;

  WidgetCategory(this.itemlist, this.title,this._seeAllClicked,this.index);

  void onItemClicked(String title){
    print(title);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 12, top: 16, bottom: 10),
                      child: Text(title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        itemlist[0].picURL,
                        height: 75,
                        width: 75,
                        fit: BoxFit.fill,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        itemlist[1].picURL,
                        height: 75,
                        width: 75,
                        fit: BoxFit.fill,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        itemlist[2].picURL,
                        height: 75,
                        width: 75,
                        fit: BoxFit.fill,
                      )),
                  InkWell(
                    onTap: (){
                      _seeAllClicked(index);
                    },
                    child: Container(
                      height: 75,
                      width: 75,
                      child: Stack(
                        children: [
                          Container(
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  itemlist[3].picURL,
                                  height: 75,
                                  width: 75,
                                  fit: BoxFit.fill,
                                )),
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                height: 75,
                                width: 75,
                                alignment: Alignment.center,
                                child: Text("See all",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontFamily: "RobotoCondensed",
                                        fontWeight: FontWeight.bold)),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
    );
  }
}
