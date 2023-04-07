import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyRegister extends StatelessWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String email = '', pass = '';
    return Scaffold( 
      
      appBar: AppBar(
        title: Text('Register'), 
        backgroundColor: Colors.purple,
      ),
      body:  Container(
          width: MediaQuery.of(context).size.width, 
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
            padding: const EdgeInsets.all(28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, 
                crossAxisAlignment: CrossAxisAlignment.start, 
          
                children: [ 
                  SizedBox(height: 50,), 
                  Container( 
                    margin: EdgeInsets.fromLTRB(4, 10, 4, 4),
                    padding: EdgeInsets.all(1.0),
                    child: TextFormField(  
                      style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color:  Colors.purple),
                      decoration: InputDecoration(
                         prefixIcon: Icon(Icons.person),
                      prefixIconColor: Colors.purple,
                      contentPadding:
                          const EdgeInsets.only(left: 14.0, bottom: 2.0, top: 14.0),
                      hintText: 'Enter Your Name',
                      focusColor: Colors.purple,
                      //  border: OutlineInputBorder(),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[300],
                      //  focusColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(25.7)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(
                            color: Colors.purple),
                        borderRadius: new BorderRadius.circular(25.7),
                      ),
                      ), 
                       validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                    ),
                  ), 
                  Container( 
                    margin: EdgeInsets.fromLTRB(4, 10, 4, 4),
                    padding: EdgeInsets.all(1.0),
                    child: TextFormField(  
                      style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color:  Colors.purple),
                      decoration: InputDecoration(
                         prefixIcon: Icon(Icons.person),
                      prefixIconColor: Colors.purple,
                      contentPadding:
                          const EdgeInsets.only(left: 14.0, bottom: 2.0, top: 14.0),
                      hintText: 'Enter Your Contact no',
                      focusColor: Colors.purple,
                      //  border: OutlineInputBorder(),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[300],
                      //  focusColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(25.7)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(
                            color: Colors.purple),
                        borderRadius: new BorderRadius.circular(25.7),
                      ),
                      ), 
                       validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                    ),
                  ),
                  Container( 
                    margin: EdgeInsets.fromLTRB(4, 10, 4, 4),
                    padding: EdgeInsets.all(1.0),
                    child: TextFormField( 
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color:  Colors.purple),    
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: InputDecoration(
                         prefixIcon: Icon(Icons.person),
                      prefixIconColor: Colors.purple,
                      contentPadding:
                          const EdgeInsets.only(left: 14.0, bottom: 2.0, top: 14.0),
                      hintText: 'Enter Your Email',
                      focusColor: Colors.purple,
                      //  border: OutlineInputBorder(),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[300],
                      //  focusColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(25.7)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(
                            color: Colors.purple),
                        borderRadius: new BorderRadius.circular(25.7),
                      ),
                      ), 
                       validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                    ),
                  ),  
          
                   Container( 
                    margin: EdgeInsets.fromLTRB(4, 10, 4, 4),
                    padding: EdgeInsets.all(1.0),
                    child: TextFormField( 
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color:  Colors.purple),    
                      onChanged: (value) {
                      pass = value;
                    },
                    obscureText: true,
                      decoration: InputDecoration(
                         prefixIcon: Icon(Icons.person),
                      prefixIconColor: Colors.purple,
                      contentPadding:
                          const EdgeInsets.only(left: 14.0, bottom: 2.0, top: 14.0),
                      hintText: 'Enter Your password',
                      focusColor: Colors.purple,
                      //  border: OutlineInputBorder(),
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Colors.grey[300],
                      //  focusColor: Colors.grey,
                      focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.purple),
                          borderRadius: BorderRadius.circular(25.7)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(
                            color: Color.fromARGB(255, 237, 235, 235)),
                        borderRadius: new BorderRadius.circular(25.7),
                      ),
                      ), 
                       validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Password';
                    }
                    return null;
                  },
                    ),
                  ),  
                  
                  /*TextField(
                    onChanged: (value) {
                      pass = value;
                    },
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Password'),
                  ),*/ 
                   SizedBox(height: 28.0), 
                    Center(
                      child: Container(
                                    padding:
                        const EdgeInsets.symmetric(horizontal: 13, vertical: 3),
                                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(30)),
                                    child: InkWell(
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text('Submit',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                        onTap: () async {
                          try {
                            UserCredential userCredential = await FirebaseAuth
                                .instance
                                .createUserWithEmailAndPassword(
                                    email: email, password: pass);
                            Navigator.pushNamed(context, 'home');
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              print('The password provided is too weak.');
                            } else if (e.code == 'email-already-in-use') {
                              print('The account already exists for that email.');
                            }
                          } catch (e) {
                            print(e);
                          }
                        
                        })),
                    ),
                 /* ElevatedButton(
                      onPressed: () async {
                        try {
                          UserCredential userCredential = await FirebaseAuth
                              .instance
                              .createUserWithEmailAndPassword(
                                  email: email, password: pass);
                          Navigator.pushNamed(context, 'home');
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'weak-password') {
                            print('The password provided is too weak.');
                          } else if (e.code == 'email-already-in-use') {
                            print('The account already exists for that email.');
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                      child: Text('Create')),*/
                ],
              ),
            ),
          ),
        
      ),
    );
  }
}
