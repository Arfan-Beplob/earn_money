import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/common_widget/applogo.dart';
import 'package:untitled2/const/colors.dart';
import 'package:untitled2/const/texts.dart';
import 'package:untitled2/view/login_screen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../const/style.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  changeScreen(){
    Future.delayed(const Duration(seconds: 30000),(){

      Get.to(const LoginPage());
    });
  }

@override
  void initState() {
    changeScreen();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: bagroundColor,
      body: Center(
        child: Column(
          children: [
            Align(alignment: Alignment.center,
            child: Image.asset('assets/icon/splash_icon.png',fit: BoxFit.cover,),
            ),
            20.heightBox,
            applogo(),
            10.heightBox,
            appName.text.fontFamily(bold).white.size(22).make(),
            5.heightBox,
            appversion.text.white.make(),
            Spacer(),
            credits.text.make(),
            30.heightBox
          ],
        ),
      ),
    );
  }
}
