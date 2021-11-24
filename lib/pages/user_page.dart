
import 'package:counterx/controllers/home_controller.dart';
import 'package:counterx/controllers/user_controller.dart';
import 'package:counterx/pages/home_page_widgets/user_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class UserPage extends StatelessWidget {
  final HomeController _controller = HomeController();
  TextStyle estiloTx = TextStyle(fontSize: 40);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
        init: UserController(),
        builder: (_){
          return Scaffold(

            appBar: AppBar(
              title: Text ('UsersX'),
              centerTitle: true,
            ),

            body:UserList()
            //body:ProductList()

          );
        }
    );
  }
}
