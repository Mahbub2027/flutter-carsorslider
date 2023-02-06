import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:myproject/login.dart';
import 'package:myproject/signup.dart';




/*final List<String> imgList = [
  //'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];*/

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}


class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

    Future getimgfromFirebase() async{
      //var firestore = FirebaseFirestore.instance;
      CollectionReference qn = await FirebaseFirestore.instance.collection("astro");
      //return qn.documents;
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      //appBar: AppBar(
       // title: Text("GFG Slider"),
     //),
      
      
      body: ListView(
        children: [
          CarouselSlider(
              items: [                  
                //1st Image of Slider
                Container(
                  width: 250.0,
                  margin: EdgeInsets.fromLTRB(6, 20, 6, 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      //image: NetworkImage("https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80"),
                      image: AssetImage("images/astro.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                  
                //2nd Image of Slider
                Container(
                  width: 250.0,
                  margin: EdgeInsets.fromLTRB(6, 20, 6, 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      //image: NetworkImage("https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80"),
                      image: AssetImage("images/sky.jpg"),
                      fit: BoxFit.cover,
                      
                    ),
                    
                  ),
                ),
                  
                //3rd Image of Slider
                Container(
                  width: 250.0,
                  margin: EdgeInsets.fromLTRB(6, 20, 6, 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      //image: NetworkImage("https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80"),
                      image:  (AssetImage("images/moon.jpg")),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),


                Container(
                  width: 250.0,
                  margin: EdgeInsets.fromLTRB(6, 20, 6, 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      //image: NetworkImage("https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80"),
                      image:  (AssetImage("images/space.jpg")),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),                        
  
          ],
              
            //Slider Container properties
              options: CarouselOptions(
                
                height: MediaQuery.of(context).size.height/2,
                enlargeCenterPage: true,
                autoPlay: true,
                initialPage: 0,             
                aspectRatio: 4 / 3,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 1800),
                viewportFraction: 1.0,
                
              ),
              
              
          ),
        
        Column(
          
          children: [
            
            Container(
              width: 300.0,
             
              
                padding: EdgeInsets.fromLTRB(20, 45, 20, 15),
                child:  ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                //padding: EdgeInsets
                ),
                onPressed: (
                  
                ){
                  showDialog(context: context, 
                  builder: (context){
                    return Center(child: CircularProgressIndicator());
                 });
                  
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login()));
                }, 
                   
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Log in",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold,),
                
                 ),
              ),),
              
              
              
            ),

            ///////  Sign up   /////////////////////////
            Container(
              width: 300.0,
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 25),                   
                    child: ElevatedButton(
                 
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),),
            
            onPressed: (){
              
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => signup()));
            },               
                    
                
                  child: Padding(
                    
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Sign Up", 
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,),
                       
                      ),
                  ),
                ),),            
                    
                  
          ],
          ),
        ],),
          
      );
  }
}



/*
style: ElevatedButton.styleFrom(
            
            backgroundColor: Colors.amber,
            // side: BorderSide(color: Colors.yellow, width: 5),
            textStyle: const TextStyle(
              
              color: Colors.white, fontSize: 25, fontStyle: FontStyle.normal,),
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0))),
          ),
          */