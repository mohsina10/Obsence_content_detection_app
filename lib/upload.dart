import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:io';
import 'options.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; 

class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> { 
  XFile? pickedFile;
  ImagePicker image = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        title: Text('Images'), 
        backgroundColor: Colors.purple,
      ), 
      body: Container(  
        width: MediaQuery.of(context).size.width, 
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                          children:<Widget>[  
                            SizedBox(height: 50,),  
                               GestureDetector( 
                                 
                                 child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: const Border(
                          top: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          left: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          right: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: ListTile(
                        tileColor: Colors.green[50],
                        leading: const Text(
                          'Upload from gallary',
                          style: TextStyle(fontSize: 16),
                        ),
                        trailing: const Icon(Icons.photo_library),
                      ),
                    ),
                  ),
                                onTap: () {
                                  getgall();
                                    
                                },
                              
                              ),
                            //), 
                            SizedBox(height: 15,), 
                              GestureDetector( 
                                 
                                 child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: const Border(
                          top: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          left: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          right: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: ListTile(
                        tileColor: Colors.green[50],
                        leading: const Text(
                          'Upload from camera',
                          style: TextStyle(fontSize: 16),
                        ),
                        trailing: const Icon(Icons.photo_library),
                      ),
                    ),
                  ),
                                onTap: () {
                                  getcam();
                                    
                                },
                              
                              ),
                          ] 
              ) 
            ) 
          )
        

      ),
    );
  }  

  getcam() async {
    // ignore: deprecated_member_use
     final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
    );

    if (pickedFile == null) return;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => Options(image: pickedFile)));
  }

  getgall() async {
    // ignore: deprecated_member_use
    final XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile == null) return;
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (_) => Options(image: pickedFile)));
  }
}
