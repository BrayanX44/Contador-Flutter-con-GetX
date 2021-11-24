import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

int _counter = 0;

int get counter => _counter;

//Funcion botones
void increment(){
  this._counter++;
  update(['text']);
}
void decrement(){
  this._counter--;
  update(['text']);
}
void reset    (){
  this._counter=0;
  update(['text']);
}

@override
  void onInit() {
    super.onInit();
    print ('Same as init state');
  }

  @override
  void onReady() {
    super.onReady();
    print('onReady');
  }

}