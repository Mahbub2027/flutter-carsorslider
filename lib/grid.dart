import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:myproject/login.dart';

class grid extends StatelessWidget {
  const grid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(  
      //appBar: AppBar(  
       // title: Text("Flutter GridView Demo"),  
        //backgroundColor: Colors.green,),  
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          
          children: [
                Container(
                  //width: 300,
                  //height: 300,
                  child: InkWell(
                  onTap: () {
      
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login()));
              },
                  child: Ink.image(
                     // width: 300,
                      //height: 300,
                  //image: const NetworkImage(
                  //  'https://cdn.pixabay.com/photo/2022/12/02/14/13/desert-7630943_1280.jpg', )
                      image: AssetImage("assetsimages/Mercury.jpg"),   fit: BoxFit.cover,
                  ),)
          ),
          Container(
                      //width: 300,
                      //height: 300,
                  child: InkWell(
                  onTap: () {
      
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login()));
              },
                  child: Ink.image(
                      //width: 300,
                      //height: 300,
                  //image: const NetworkImage(
                  //  'https://cdn.pixabay.com/photo/2022/12/02/14/13/desert-7630943_1280.jpg', )
                     image: AssetImage("assetsimages/venus.jpg"),  fit: BoxFit.cover,
                  ),)
          ),
          Container(
      
                      //width: 300,
                      //height: 300,
                  child: InkWell(
                  onTap: () {
      
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login()));
              },
                  child: Ink.image(
                     // width: 300,
                     // height: 300,
                  //image: const NetworkImage(
                  //  'https://cdn.pixabay.com/photo/2022/12/02/14/13/desert-7630943_1280.jpg', )
                      image: AssetImage("assetsimages/earth.jpg"),   fit: BoxFit.cover, 
                  ),)
          ),
          Container(
                  child: InkWell(
                  onTap: () {
      
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login()));
              },
                  child: Ink.image(
                      //width: 300,
                     // height: 300,
                  //image: const NetworkImage(
                  //  'https://cdn.pixabay.com/photo/2022/12/02/14/13/desert-7630943_1280.jpg', )
                      image: AssetImage("assetsimages/mars.jpg"),   fit: BoxFit.cover,
                  ),)
          ),
          Container(
                  child: InkWell(
                  onTap: () {
      
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login()));
              },
                  child: Ink.image(
                      //width: 300,
                      //height: 300,
                  //image: const NetworkImage(
                  //  'https://cdn.pixabay.com/photo/2022/12/02/14/13/desert-7630943_1280.jpg', )
                      image: AssetImage("assetsimages/jupeter.png"),    fit: BoxFit.cover,
                  ),)
          ),
          Container(
                  child: InkWell(
                  onTap: () {
      
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login()));
              },
                  child: Ink.image(
                      //width: 300,
                     // height: 300,
                  //image: const NetworkImage(
                  //  'https://cdn.pixabay.com/photo/2022/12/02/14/13/desert-7630943_1280.jpg', )
                      image: AssetImage("assetsimages/saturn.jpg"),    fit: BoxFit.cover,
                  ),)
          ),
          Container(
                  child: InkWell(
                  onTap: () {
      
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login()));
              },
                  child: Ink.image(
                      //width: 300,
                      ///height: 300,
                  //image: const NetworkImage(
                  //  'https://cdn.pixabay.com/photo/2022/12/02/14/13/desert-7630943_1280.jpg', )
                      image: AssetImage("assetsimages/uranus.jpg"),    fit: BoxFit.cover,
                  ),)
          ),
          Container(
                  child: InkWell(
                  onTap: () {
      
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login()));
              },
                  child: Ink.image(
                      //width: 300,
                     // height: 300,
                  //image: const NetworkImage(
                  //  'https://cdn.pixabay.com/photo/2022/12/02/14/13/desert-7630943_1280.jpg', )
                      image: AssetImage("assetsimages/neptune.jpg"),  fit: BoxFit.cover, 
                  ),)
          ),
          Container(
                  child: InkWell(
                  onTap: () {
      
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>login()));
              },
                  child: Ink.image(
                      //width: 300,
                     // height: 300,
                  //image: const NetworkImage(
                  //  'https://cdn.pixabay.com/photo/2022/12/02/14/13/desert-7630943_1280.jpg', )
                      image: AssetImage("assetsimages/moon.jpg"), fit: BoxFit.cover,   
                  ),)
          ),
      
      
      
          ]
          
          
          
          ,),
      ));
    
  }  
}











/*import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  // This widget is the root of your application.  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: MyGridScreen(),  
    );  
  }  
}  
  
class MyGridScreen extends StatefulWidget {  
  MyGridScreen({super.key});  
  
  @override  
  _MyGridScreenState createState() => _MyGridScreenState();  
}  
  
class _MyGridScreenState extends State<MyGridScreen> {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text("Flutter GridView Demo"),  
        backgroundColor: Colors.green,  
      ),  
      body: Center(  
          child: GridView.extent(  
            primary: false,  
            padding: const EdgeInsets.all(16),  
            crossAxisSpacing: 10,  
            mainAxisSpacing: 10,  
            maxCrossAxisExtent: 200.0,  
            children: <Widget>[  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('First', style: TextStyle(fontSize: 20)),  
                color: Colors.yellow,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Second', style: TextStyle(fontSize: 20)),  
                color: Colors.blue,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Third', style: TextStyle(fontSize: 20)),  
                color: Colors.blue,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Four', style: TextStyle(fontSize: 20)),  
                color: Colors.yellow,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Fifth', style: TextStyle(fontSize: 20)),  
                color: Colors.yellow,  
              ),  
              Container(  
                padding: const EdgeInsets.all(8),  
                child: const Text('Six', style: TextStyle(fontSize: 20)),  
                color: Colors.blue,  
              ),  
            ],  
          )),  
    );  
  }  
}  */