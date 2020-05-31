import 'package:flutter/material.dart';
import 'package:flutter_image_loader/image_loader.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Loader',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.black, title: Text("Image Loader")),
        body: Center(
          child: Container(
            width: 200,                     
            child: Center(child: NetworkImageLoader(imageURL: "Image URL"))
        ))
    );
  }
}
