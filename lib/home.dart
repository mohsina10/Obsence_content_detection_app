import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';  
import 'uploadvid.dart';
import 'upload.dart'; 
import 'block.dart';
import 'videocheck.dart';
class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
     appBar: AppBar(
        title: Text('Upload'), 
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
                          children: <Widget>[  
                            SizedBox(height: 50,),
                            Container( 
                              
                              child: Text(
                                "Upload Your Content",
                                style: TextStyle(
                                    color: Colors.purple,
                                   // fontWeight: FontWeight.bold,
                                    fontSize: 25),
                              ),
                            ), 
                            SizedBox(height: 25,),
                           /* Container( 
                               padding: const EdgeInsets.all(18.0),
                              decoration: BoxDecoration(
                             border: Border.all(width: 2, color: Colors.blue), 
                             borderRadius: BorderRadius.circular(10),
                              ),*/
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
                          'Click to add Images',
                          style: TextStyle(fontSize: 16),
                        ),
                        trailing: const Icon(Icons.photo_library),
                      ),
                    ),
                  ),
                                onTap: () {
                                  Navigator.push(context,MaterialPageRoute(
                                   builder: (context) => Upload(),
                                  ),
                                    );
                                },
                               /* child: Text(
                                  "Click to add Images",
                                  style: TextStyle(
                                      color: Colors.black,
                                     // fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),*/
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
                          'Click to add Videos',
                          style: TextStyle(fontSize: 16),
                        ),
                        trailing: const Icon(Icons.photo_library),
                      ),
                    ),
                  ),
                                onTap: () {
                                  Navigator.push(context,MaterialPageRoute(
                                   builder: (context) => Home(),
                                  ),
                                    );
                                },
                               /* child: Text(
                                  "Click to add Images",
                                  style: TextStyle(
                                      color: Colors.black,
                                     // fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),*/
                              ),  
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
                          'Click to add Audios',
                          style: TextStyle(fontSize: 16),
                        ),
                        trailing: const Icon(Icons.photo_library),
                      ),
                    ),
                  ),
                                onTap: () {
                                  Navigator.push(context,MaterialPageRoute(
                                   builder: (context) => Block(),
                                  ),
                                    );
                                },
                               /* child: Text(
                                  "Click to add Images",
                                  style: TextStyle(
                                      color: Colors.black,
                                     // fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),*/
                              ),
                          ]) 
            ) 
            )
           ),
             
           ) ;
         

      

  }
}