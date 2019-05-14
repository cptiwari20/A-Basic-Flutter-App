import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' show get;
import 'model/ImageModel.dart';
import 'widgets/ImageList.dart';

class App extends StatefulWidget {
 createState(){
   return AppState();
 }
}

class AppState extends State<App>{
  int counter = 0;
  List<ImageModel> images = [];

   void fetchImage() async {
    counter++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
      var imageModel = ImageModel.toJson(json.decode(response.body));
      this.setState((){
        images.add(imageModel);
      });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        appBar: AppBar(
          title: Text('Lets See Some images'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => this.fetchImage(),
        ),
      ),
    );
  }
}