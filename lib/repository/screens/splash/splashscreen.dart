import 'dart:async';


import 'package:flutter/material.dart';

import '../../../domain/constants/appColors.dart';
import '../../widgets/uihelper.dart';
import '../login/loginscreen.dart';

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