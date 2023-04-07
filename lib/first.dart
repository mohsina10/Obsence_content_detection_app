import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:email_validator/email_validator.dart';
class MyFirst extends StatelessWidget {
  const MyFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {  
    final size = MediaQuery.of(context).size;
     String email = '', pass = '';
    return Scaffold( 
      //backgroundColor: Color.fromARGB(255, 98, 168, 225),
      
      body: Container(
          width: MediaQuery.of(context).size.width, 
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                
                children: [  
                  SizedBox(height: 50.0,), 
                  Image.asset('assets/images/help2.png',
                  height: 200,
                  scale: 2.5,
                  // color: Color.fromARGB(255, 15, 147, 59),
                 ),
                  Container(
                    child: Text('Welcome, to the Obsence Content detection app',style: TextStyle(
                     color: Colors.black,
                                fontSize: 26.0,
                               
                    ),),
                  ),
                  SizedBox( height: 45.0,),
                 /* Row(
                    children: [
                      Container( 
                        padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text('Login',
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    ),
                                    onTap: () async {
                              Navigator.pushNamed(context, 'login');
                            }, 
                        ), 
                      ), 
                      SizedBox(width: 28,),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)),
                            child: InkWell(
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Sign Up',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              onTap: () async {
                              Navigator.pushNamed(context, 'register');
                            }, )),
                           
                      
                    ],
                  ),*/ 
                  TextFormField( 
                  keyboardType: TextInputType.emailAddress,  
                   autofocus: false,
                  validator: (value) {
                 if (value!.isEmpty) {
                 return ("Please Enter Your Email");
                   }
            // reg expression for email validation
                 if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                  .hasMatch(value)) {
                  return ("Please Enter a valid email");
                   }
                  return null;
                   },
                  onChanged: (value) {
                    email = value;
                  }, 
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration( 
                     prefixIcon: Icon(Icons.mail),
                     contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "Email",
                      border: OutlineInputBorder( 
                      borderRadius: BorderRadius.circular(10),
            ),
                  ),
                ), 
               SizedBox( height: 25.0,),   
                 TextFormField(  
                   autofocus: false, 
                   obscureText: true,
                  validator: (value) {
                  RegExp regex = new RegExp(r'^.{8,}$');
                   if (value!.isEmpty) {
                     return ("Password is required for login");
                      }
                  if (!regex.hasMatch(value)) {
                  return ("Enter Valid Password(Min. 8 Character)");
                    }
                  },
                  onChanged: (value) {
                    pass = value;
                  }, 
                   textInputAction: TextInputAction.done,
                 // obscureText: true,
                  decoration: InputDecoration( 
                    prefixIcon: Icon(Icons.vpn_key),
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      hintText: "Password",
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                       ),
                  ),
                ), 
                 SizedBox( height: 35.0,),
                      Container(
                             
                                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(30)),
                            child: InkWell(
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Sign In', 
                                      textAlign: TextAlign.center,
                                      style: TextStyle( 
                                        
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ),
                              onTap: () async {
                             try {
                            UserCredential userCredential = await FirebaseAuth
                            .instance
                            .signInWithEmailAndPassword(
                                email: email, password: pass);
                        Navigator.pushNamed(context, 'home');
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          print('No user found for that email.');
                        } else if (e.code == 'wrong-password') {
                          print('Wrong password provided for that user.');
                        }
                      }
                            }, )), 
                            SizedBox(height: 15.0,),
                            Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Don't have an account? "),
                            GestureDetector(
                              onTap: () {
                               Navigator.pushNamed(context, 'register');
                              },
                              child: Text(
                                "SignUp",
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            )
                          ])
                 
                ],
              ),
            ),
          ),
        
      ),
    );
  }
}
