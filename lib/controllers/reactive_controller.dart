

import 'dart:async';

import 'package:counterx/controllers/socket_client_controller.dart';
import 'package:get/get.dart';

class ReactiveController extends GetxController{
  RxInt counter = 0.obs;
  RxString currentDay = ''.obs;

  RxList<String> items = <String>[].obs;

  late StreamSubscription<String> _subscription ;

@override
  void onInit() {
    super.onInit();
    final SocketClientController socketClientController =
    Get.find<SocketClientController>();

    socketClientController.message.listen((data) {
      print('message::::$data');
    });
  }

@override
  void onClose() {
    _subscription?.cancel();
    super.onClose();
  }

  void increment (){
    counter++;
  }

  void getDate(){
    currentDay.value = DateTime.now().toString();
  }

  void addItem(){
    items.add(DateTime.now().toString());
  }


  void removeItem(int index){
    items.removeAt(index);
  }



}