import 'package:counterx/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class ProfileController extends GetxController{

  late User _user;
  User get user => _user;

String _inputText = '';

@override
  void onInit() {
    super.onInit();

    this._user = Get.arguments as User;

  }
  void onInputTextChanged(String text){
  this._inputText = text;
  }

  void goToBackWithData (){
if (this._inputText.trim().length>0){
  Get.back(result: this._inputText);
}else{
  Get.dialog(
      AlertDialog(
          title: Text('ERROR'),
        content: Text('Ingrese un valor válido'),
        actions: [
          FlatButton(
            onPressed: (){Get.back();
            },
            child: Text('ACEPTAR'),
          )
        ],
  ),
  );
}
  }
}