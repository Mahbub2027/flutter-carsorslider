import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: (){
              showDialog(context: context, 
                  builder: (context){
                    return Center(child: CircularProgressIndicator());

                  });
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => grid()));
            },
             child: Text("Click me")),
        ),
        )
      
    );
  }
  
  grid() {}
}