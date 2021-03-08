import 'package:StatusBackgroundDemo/widgets/WidgetAddText.dart';
import 'package:StatusBackgroundDemo/widgets/WidgetBackgroundImagePick.dart';
import 'package:StatusBackgroundDemo/widgets/WidgetColorPick.dart';
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

    return Scaffold(
      appBar: appbar,
      body: Column(
        children: <Widget>[
          AddText(appbar),
          Container(
            margin: EdgeInsets.only(top: 8,bottom: 4,left: 12,right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Text Color"),
                Text("Background")
            ],),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColorPick(),
                BackgroundImagePick()
              ],
            ),
          )
        ],
      ),
    );
  }
}
