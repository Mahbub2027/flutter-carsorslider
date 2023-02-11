import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myproject/grid.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context,MaterialPageRoute(builder: ((context) => grid())));
          },
          
          
           child: Text("data"))  

        ),
      ),
      
    );
  }
}






