import 'package:flutter/material.dart';

class NetworkImageLoader extends StatelessWidget {
  final String imageURL;

  NetworkImageLoader({Key key, this.imageURL}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(imageURL, fit: BoxFit.cover, 
      errorBuilder: (context, error, stackTrace) {
        if(error != null && context !=null) {
          return Image(image: AssetImage("assets/images/no_pic.png"));
        }

        return null;
      },
      loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent loadingProgress){
          if(loadingProgress == null) return child;
          return CircularProgressIndicator();
      })
    );
  }
}