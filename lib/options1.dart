import 'package:flutter/material.dart'; 
import 'dart:io';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart'; 
import 'package:image_picker/image_picker.dart';

class Options extends StatelessWidget {
  const Options({
    Key? key,
    required this.image,
  }) : super(key: key);

  final XFile image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
        appBar: AppBar(
        title: Text('Login'),
      ), 
      body: Center(
        child: Container( 
          height: 267, 
          width: 345,
          child: Image.file(File(image.path))
          ),

       ),
    ); 
  }
}