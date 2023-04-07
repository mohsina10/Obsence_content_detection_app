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
        title: Text('Images'), 
        backgroundColor: Colors.purple,
      ), 
      body: Container(
        child: SingleChildScrollView(
          child: Column(  
            children: [  
               //shrinkWrap: true,
              Container( 
                // width: MediaQuery.of(context).size.width, 
                // height: MediaQuery.of(context).size.height,  
                //color: Colors.amber,
                //height: 250, 
                //width: 234,
               child: Image.file(File(image.path), 
               width: MediaQuery.of(context).size.width, 
                height: 250,
               )
              ), 
              Container( 
                 child: GridView.count( 
                  shrinkWrap: true, 
                  physics: ClampingScrollPhysics(),
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              children: [
                Card(
                  child: Image.asset(
                  'assets/images/temp1.jpg',
                  fit: BoxFit.cover,
                  ),
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                 margin: EdgeInsets.all(10),
                ),
                Card(
                  child: Image.asset(
                  'assets/images/temp2.jpg',
                  fit: BoxFit.cover,
                  ),
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                 margin: EdgeInsets.all(10),
                ),
                Card(
                   child: Image.asset(
                  'assets/images/temp3.jpg',
                  fit: BoxFit.cover,
                  ),
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                 margin: EdgeInsets.all(10),
                ),
                Card(
                   child: Image.asset(
                  'assets/images/temp4.jpg',
                  fit: BoxFit.cover,
                  ),
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                 margin: EdgeInsets.all(10),
                ),
                Card(
                   child: Image.asset(
                  'assets/images/temp6.jpg',
                  fit: BoxFit.cover,
                  ),
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                 margin: EdgeInsets.all(10),
                ),
                Card(
                   child: Image.asset(
                  'assets/images/help2.png',
                  fit: BoxFit.cover,
                  ),
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10.0),
                ),
                elevation: 5,
                 margin: EdgeInsets.all(10),
                ),
                
              ], 
                 )
              )
           
            ],
            
            ),
        ),

       ),
    ); 
  }
}