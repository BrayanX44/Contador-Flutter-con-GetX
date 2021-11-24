import 'package:counterx/pages/home_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{
@override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 1), (){
      Get.off(HomePage(), transition: Transition.zoom);
    });
  }

}