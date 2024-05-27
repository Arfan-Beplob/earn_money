import 'package:flutter/cupertino.dart';
import 'package:untitled2/const/image.dart';
import 'package:velocity_x/velocity_x.dart';

Widget applogo(){
  return Image.asset(Icapplogo).box.transparent.size(100, 100).padding(const EdgeInsets.all(8)).make();
}