import 'package:flutter/material.dart';
 class HomePage extends StatefulWidget {
   const HomePage({Key? key}) : super(key: key);
  static final String id="home_page";
   @override
   _HomePageState createState() => _HomePageState();
 }

 class _HomePageState extends State<HomePage> {
   bool _isLogin = false;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage("assets/images/im_party3.jpg"),
               fit: BoxFit.cover,
           ),
         ),
         child: Container(
           padding: EdgeInsets.only(top: 80, left: 30, right: 30),
           decoration: BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.topCenter,
             colors: [
               Colors.black.withOpacity(.6),
               Colors.black.withOpacity(.5),
               Colors.black.withOpacity(.4),
               Colors.black.withOpacity(.1),
             ]
           ),
           ),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Text("Find best party from near you.", style: TextStyle(color: Colors.yellowAccent, fontWeight: FontWeight.bold, fontSize: 35),),
               SizedBox(height: 30,),
               Text("Let us find party for yur interest.", style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold, fontSize: 20),),
                SizedBox(height: 470,),
              _isLogin ?
               Container(
                 height: 55,
                 decoration: BoxDecoration(
                   color: Colors.yellow.shade900,
                   borderRadius: BorderRadius.circular(50),
                 ),
                 child: Center(
                   child: Text("Start", style: TextStyle(color: Colors.white, fontSize: 20),),
                 ),
               ) :
               Row(
                 children: [
                   Container(
                     width: 150,
                     height: 55,
                     decoration: BoxDecoration(
                       color: Colors.red,
                       borderRadius: BorderRadius.circular(50),
                     ),
                     child: Center(
                       child: Text("Google+", style: TextStyle(color: Colors.white, fontSize: 20),),
                     ),
                   ),
                   SizedBox(width: 10,),
                   Container(
                     width: 150,
                     height: 55,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       borderRadius: BorderRadius.circular(50),
                     ),
                     child: Center(
                       child: Text("Facebook", style: TextStyle(color: Colors.white, fontSize: 20),),
                     ),
                   ),
                 ],
               ),
               SizedBox(height: 10,)
             ],
           ),
         ),
       ),

     );
   }
 }
