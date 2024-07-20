import 'package:flutter/material.dart';

import '../../model/magazine_model.dart';
import 'homeScreenTitle.dart';
import 'home_tile.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home";
  Color purple = Color(0xffc600fd);
  TextStyle defulttextstyle = TextStyle(fontSize: 20, color: Colors.white);

  // List<String> magazineImpage =["assets/2.jpg","assets/2.jpg","assets/2.jpg"];
  // List<String> magazineTitles =["mayar","sandra","kareem"];
  List<MagazineModel> magazines = [
    MagazineModel(impagepath: "assets/M.jpeg", text: "mayar"),
    MagazineModel(impagepath: "assets/M.jpeg", text: "sandra"),
    MagazineModel(impagepath: "assets/M.jpeg", text: "kareem"),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromRGBO(0, 0, 0,1.0),
      appBar: AppBar(
        title: Text(
          "Title",
          style: TextStyle(
              fontSize: 30,
              color: Colors
                  .blue /* Color.fromRGBO(253, 0, 140, 1.0)),),//to write a text on the appBar*/), //TextStyle
        ),
        elevation: 200,
        //it is a shadow of appBar
        //leading:Icon(Icons.arrow_back), //we can use it for icons in the left side
        actions: [Icon(Icons.call), Icon(Icons.arrow_back)],
        centerTitle: true,
      ),
      drawer: Drawer(),
      //floatingActionButton: FloatingActionButton(onPressed: null),

      body: Column(
        children: [
          Row(
            children: [
              HomeScreenTitle("magazine"),
              Container(
                width: 4,
              ),
              HomeScreenTitle("text")
            ],
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: magazines.length,
                  itemBuilder: (BuildContext context, int index) {
                    print("index :$index");
                    MagazineModel model = magazines[index];
                    return HomeTile(
                        imagepath: model.impagepath, text: model.text);
                  }))
        ],
      ),
    );
  }
// Widget myItemBuilder(BuildContext context , int index ){
//   print("index :$index");
//   MagazineModel model = magazines[index];
//   return HomeTile(imagepath:model.impagepath, text:model.text);
// }

//aro functionx
// Widget myItemBuilder(BuildContext context , int index )=>
//   HomeTile(imagepath:magazines[index].impagepath, text:magazines[index].text);
}

// ,Row(
// children: [
// HomeTile(imagepath: "assets/2.jpg",text: "mayar",),
// SizedBox(width: 4,),
// HomeTile(imagepath:"assets/2.jpg" ,text:"mayar" ,)
// ],
// )
// ,Row(
// children: [
// HomeTile(imagepath: "assets/2.jpg",text: "mayar",),
// SizedBox(width: 4,),
// HomeTile(imagepath:"assets/2.jpg" ,text:"mayar" ,)
// ],
// )
// ,Row(
// children: [
// HomeTile(imagepath: "assets/2.jpg",text: "mayar",),
// SizedBox(width: 4,),
// HomeTile(imagepath:"assets/2.jpg" ,text:"mayar" ,)
// ],
// )
// ,Row(
// children: [
// HomeTile(imagepath: "assets/2.jpg",text: "mayar",),
// SizedBox(width: 4,),
// HomeTile(imagepath:"assets/2.jpg" ,text:"mayar" ,)
// ],
// )
// ,Row(
// children: [
// HomeTile(imagepath: "assets/2.jpg",text: "mayar",),
// SizedBox(width: 4,),
// HomeTile(imagepath:"assets/2.jpg" ,text:"mayar" ,)
// ],
// )
// ,Row(
// children: [
// HomeTile(imagepath: "assets/2.jpg",text: "mayar",),
// SizedBox(width: 4,),
// HomeTile(imagepath:"assets/2.jpg" ,text:"mayar" ,)
// ],
// )
// ,Row(
// children: [
// HomeTile(imagepath: "assets/2.jpg",text: "mayar",),
// SizedBox(width: 4,),
// HomeTile(imagepath:"assets/2.jpg" ,text:"mayar" ,)
// ],
// )
// ,Row(
// children: [
// HomeTile(imagepath: "assets/2.jpg",text: "mayar",),
// SizedBox(width: 4,),
// HomeTile(imagepath:"assets/2.jpg" ,text:"mayar" ,)
// ],
// )
// ,Row(
// children: [
// HomeTile(imagepath: "assets/2.jpg",text: "mayar",),
// SizedBox(width: 4,),
// HomeTile(imagepath:"assets/2.jpg" ,text:"mayar" ,)
// ],
// )
