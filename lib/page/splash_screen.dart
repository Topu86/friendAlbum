import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottonController.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),()=>Navigator.push(context, CupertinoPageRoute(builder: (_)=> BottomNavController())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.deep_orange,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "FriendAlbum",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 44),
              ),
              SizedBox(
                height: 20,
              ),
              CircularProgressIndicator(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
