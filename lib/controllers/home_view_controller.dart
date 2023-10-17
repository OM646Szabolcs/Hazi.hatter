import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeViewController extends GetxController {
  int csillagokDbSzama=3;

  void noveldACsillagDbt(){
    if (csillagokDbSzama < 5) {
      csillagokDbSzama++;
      update();
    }
 }
  void csokkentsdACsillagDbt(){
    if (csillagokDbSzama > 0) {
      csillagokDbSzama--;
      update();
    }
 }


  List<Icon> getStars() {
    List<Icon> temp = [];

    for (int i = 0; i < 5; i++) {
      temp.add(Icon((i<csillagokDbSzama? Icons.star:Icons.star_border), color: Colors.amber));
    }
    return temp;
  }
}