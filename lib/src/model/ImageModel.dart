import 'package:flutter/material.dart';

class ImageModel {
  String url;
  String title;
  int id;

  ImageModel(this.id, this.url, this.title);

  ImageModel.toJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    url = parsedJson['url'];
    title= parsedJson['title'];
  }
}