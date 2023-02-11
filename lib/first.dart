import 'package:flutter/material.dart';
import 'package:myproject/login.dart';
import 'package:myproject/signup.dart';

class home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
            body:
                Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      
                      image: AssetImage('images/space.jpg'),
                      fit: BoxFit.fill ),
                  ),

                  child:
                    Container (
                      //width: screenWidth,
                    //  decoration: BoxDecoration(
                     //  gradient: LinearGradient(
                      //    colors: [
                          // Colors.blue.withOpacity(0.3),
                          //  Colors.black.withOpacity(0.5),
                          //  Colors.blue.withOpacity(0.5)
                     //     ]  ),  ),

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                  Text("Welcome", style: 
                                    TextStyle(
                                      color: Colors.white,
                                      fontSize: 64.0,
                                      fontWeight: FontWeight.bold ),),
                              ],
                            ),
                          ),

                            ////// For log in button
                          MaterialButton(
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()));
                            },
                            child: Text('Log in',
                                  style: TextStyle( fontSize: 16 , fontWeight: FontWeight.bold),),
                                          
                            color: Colors.white,
                            //minWidth: screenWidth-64,
                            minWidth: MediaQuery.of(context).size.width/2,
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(32.0),
                            ),
                          ),

                          
                            //////// for text button
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 15),
                            child: TextButton(
                              onPressed: (){
                              }, 
                              child: Text('Already have an account?',
                                          style: TextStyle(color: Colors.white, fontSize: 16 ),),
                            ),
                          ), 


                            ////// For sign up button
                          MaterialButton(
                            onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signup()));
                              //Navigator.pop(context, MaterialPageRoute(builder: (context) => home()));
                            },
                            child: Text('Sign Up',
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                          
                            color: Colors.white,
                            //minWidth: screenWidth-64,
                            minWidth: MediaQuery.of(context).size.width/2,
                            padding: EdgeInsets.all(20),
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(32.0),
                            ),
                          ),    

                            //////// For text button 
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 70),
                            child: TextButton(
                              onPressed: (){
                              }, 
                              child: Text("Don't have an account?",
                                            style: TextStyle(color: Colors.white, fontSize: 16 ),),
                            ),
                          ), 
                        ],
                      ),
                    ),
                ),
          );
  }
}