import 'package:counterx/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SplashController(),
        dispose: (_){
        print('normalDispose');
        },
        builder: (_)=>Scaffold(
      body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
