import 'dart:async';


import 'package:commerce/domain/constants/appColors.dart';
import 'package:commerce/repository/screens/login/loginscreen.dart';
import 'package:commerce/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

 class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: AppColors.scaffoldbackgroud,
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
         UiHelper.CustomImage(img: "image 1 (1).png"),
       ],),
     ),
   );
  }
}