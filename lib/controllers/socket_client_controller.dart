import 'dart:async';

import 'package:get/get.dart';
import 'package:faker/faker.dart';



class SocketClientController extends GetxController{
  RxString _message = "".obs;
  RxString get message => _message;

  late Timer _timer;

final _faker = Faker();
  @override
  void onInit() {
    super.onInit();
    _init();
  }
  
  _init(){
    _timer= Timer.periodic(Duration(seconds: 2), (timer) {
     _message.value = _faker.lorem.sentence();
    },);
  }

  @override
  void onClose() {
    if( _timer != null){
      _timer.cancel();
    }
    super.onClose();
  }

}