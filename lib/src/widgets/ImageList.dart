import 'package:flutter/material.dart';
import '../model/ImageModel.dart';

class ImageList extends StatelessWidget{
  final List<ImageModel> images;

  ImageList(this.images);
  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index){
        return Container(
          decoration: BoxDecoration(
           border: Border.all( color: Colors.black87)
          ),
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Image.network(images[index].url),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.0,
                ),
               child:  Text(images[index].title),
              ),
            ],
          )
        );
      },
    );
  }
}