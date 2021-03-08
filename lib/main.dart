import 'package:StatusBackgroundDemo/model/ModelCategory.dart';
import 'package:StatusBackgroundDemo/model/ModelCategoryList.dart';
import 'package:StatusBackgroundDemo/widgets/WidgetAddText.dart';
import 'package:StatusBackgroundDemo/widgets/WidgetCategoryList.dart';
import 'package:StatusBackgroundDemo/widgets/WigetColorAndBgPicker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      title: "Status Background Demo",
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<ModelCategoryList> dummyCatList=[
    ModelCategoryList([
      ModelCategory("1","assets/pics/img1.png"),
      ModelCategory("2","assets/pics/img2.png"),
      ModelCategory("3","assets/pics/img3.png"),
      ModelCategory("4","assets/pics/img4.png"),
      ModelCategory("5","assets/pics/img5.png"),
      ModelCategory("6","assets/pics/img7.png")],
        "Trending"),
    ModelCategoryList([
      ModelCategory("1","assets/pics/img5.png"),
      ModelCategory("2","assets/pics/img6.png"),
      ModelCategory("3","assets/pics/img7.png"),
      ModelCategory("4","assets/pics/img2.png"),
      ModelCategory("5","assets/pics/img4.png"),
      ModelCategory("6","assets/pics/img1.png")],
        "Love"),
    ModelCategoryList([
      ModelCategory("1","assets/pics/img7.png"),
      ModelCategory("2","assets/pics/img6.png"),
      ModelCategory("3","assets/pics/img5.png"),
      ModelCategory("4","assets/pics/img4.png"),
      ModelCategory("5","assets/pics/img2.png"),
      ModelCategory("6","assets/pics/img3.png")],
        "Birthday"),
  ];

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      backgroundColor: Color(0xff2F304F),
      actions: <Widget>[
        IconButton(
            icon: Image.asset('assets/icons/ic_save.png',fit: BoxFit.cover),
            onPressed:null),
        IconButton(
            icon: Image.asset('assets/icons/ic_download.png',fit: BoxFit.cover),
            onPressed:null),
        IconButton(
            icon: Image.asset('assets/icons/ic_share.png',fit: BoxFit.cover),
            onPressed:null)
      ],
      leading: IconButton(
          icon: Image.asset('assets/icons/ic_cross.png',fit: BoxFit.cover),
          onPressed:null)
    );
    final row=Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Text Color"),
        Text("Background")
      ],);

    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            WidgetAddText((MediaQuery.of(context).size.height -
                appbar.preferredSize.height -
                MediaQuery.of(context).padding.top) * 0.5),
            Container(
              height: (MediaQuery.of(context).size.height -
                  appbar.preferredSize.height -
                  MediaQuery.of(context).padding.top) * 0.02,
              margin: EdgeInsets.only(top: 8,bottom: 4,left: 12,right: 12),
              child: row,
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                  appbar.preferredSize.height - 12-
                  MediaQuery.of(context).padding.top) * 0.08,
              child:WidgetColorAndBgPicker() ,
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                appbar.preferredSize.height - 40-
                MediaQuery.of(context).padding.top) * 0.40,
              margin: EdgeInsets.only(bottom: 4),
              child: WidgetCategoryList(dummyCatList),
            )
          ],
        ),
      ),
    );
  }
}


/*
*/
