// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:untitled/movieslist.dart';
import 'package:untitled/now.dart';
import 'package:untitled/toprate.dart';
import 'design.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<dynamic> movies = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 45, 2, 82),
            

// bottomNavigationBar: BottomAppBar(
//   child: Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [

// IconButton(onPressed: (){
//  Navigator.push(context, MaterialPageRoute(builder: (context) => movieslist(),));
// }, icon: Icon(Icons.home)),


// IconButton(onPressed: (){
//  Navigator.push(context, MaterialPageRoute(builder: (context) => movieslist(),));
// }, icon: Icon(Icons.home)),


// IconButton(onPressed: (){
//  Navigator.push(context, MaterialPageRoute(builder: (context) => movieslist(),));
// }, icon: Icon(Icons.home)),

//     ],

//   ),
// ),


            appBar: AppBar(
              leading: Icon(Icons.movie_sharp),
              backgroundColor: Color.fromARGB(255, 45, 2, 82),
              shadowColor: Colors.white,
              title: Text('MOVIES',style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 2,color: Colors.white),),
              centerTitle: true,
            ),
            body: SingleChildScrollView(
                child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'POPULAR',
                  style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
             
              Design(),
                Divider(color: Colors.black,indent: 30,endIndent: 30),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'TOP RATE',
                  style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
          
              Toprate(),
              Divider(color: Colors.black,indent: 30,endIndent: 30),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'UP COMMING',
                  style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              now(),
              Divider(color: Colors.black,indent: 30,endIndent: 30),
              SizedBox(height: 0,),
              Text('Mhamad sardar'),
               SizedBox(height: 10,),
            ]))));
  }
}
