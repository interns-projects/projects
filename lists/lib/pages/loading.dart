import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:lists/pages/worldtime.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

 class _LoadingState extends State<Loading> {
  void setupWorldtime() async{
    WorldTime instance = WorldTime(location: 'berlin', flag: 'tokyo');
  }

 @override
  void initState(){
   super.initState();

   print('he there!');
 }
  WorldTime instance = WorldTime(location: 'berlin', flag: 'tokyo');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Padding(padding: EdgeInsets.all(50.0),
        child: Text(instance.time),)
    );

  }
   }




