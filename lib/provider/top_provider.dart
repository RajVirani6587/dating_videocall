import 'package:dating_videocall/model/model3.dart';
import 'package:flutter/material.dart';

class Top_Provider extends ChangeNotifier{
  dynamic l=2;

  List<ImageS>d1=[
    ImageS(image:'assets/image/s1.png',title: 'good-looking'),
    ImageS(image:'assets/image/s3.png',title: 'beauty'),
    ImageS(image:'assets/image/s2.png',title: 'handsome'),
    ImageS(image:'assets/image/s4.png',title: 'Cute'),
    ImageS(image:'assets/image/s5.png',title: 'striking'),
    ImageS(image:'assets/image/s6.png',title: 'Pretty'),
  ];
  void changsposition(dynamic index){
    l=index;
    notifyListeners();
  }
  String txtNamee = "";
  String txtAge = "";
  late String txtImage = "";
  String txtCountry= "";
  String txtGender = "";
  String countryValue = "";
  String stateValue = "";
  String cityValue= "";


  int i=0;

  void changeicon(int index){
    i = index;
    notifyListeners();
  }
}