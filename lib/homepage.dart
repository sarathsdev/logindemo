import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final FirebaseUser user;

  HomeScreen({this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('User',
          style: TextStyle(
              fontFamily: 'Jost'
          ),
        ),
      ),
      body: Center(child:
      Container(
        color: Colors.white54,
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("You are Logged in succesfully", style: TextStyle(color: Colors.blue,fontFamily: 'Jost', fontSize: 32),),
            SizedBox(height: 16,),
            Text("${user.phoneNumber}", style: TextStyle(color: Colors.grey, ),),
          ],
        ),
      ),
      ),
    );
  }
}