import 'package:flutter/material.dart';

class Block extends StatefulWidget {
  const Block({super.key});

  @override
  State<Block> createState() => _BlockState();
}

class _BlockState extends State<Block> {
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
                            const Center(
                             child: Icon(
                              Icons.close,
                              color: Colors.red,
                               size: 80,
                              ),
              ), 
              SizedBox(height: 45,),
                            Center(
                              child: Container( 
                                
                                child: Text(
                                  "Content provided by user, is Appropriate.please provide the proper content.",
                                  style: TextStyle(
                                      color: Colors.black,
                                     // fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                              ),
                            ), 
                            SizedBox(height: 25,), 
                          ] 
              ) 
            ) 
          )
      )
    );
  }
}