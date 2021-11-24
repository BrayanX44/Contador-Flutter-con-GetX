import 'package:counterx/controllers/global_controller.dart';
import 'package:counterx/controllers/home_controller.dart';
import 'package:counterx/controllers/user_controller.dart';
import 'package:counterx/widgets/product_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';


class ProductPage extends StatelessWidget {
  final HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GlobalController>(
        id: 'favorites',
        builder: (_){
          return Scaffold(
              appBar: AppBar(
                title: Text('Productos'),
                actions: [
                  GetBuilder<GlobalController>(
                      builder: (_)=>FlatButton(
                          child: Text('Favoritos(${_.favorites.length})'),
                      onPressed: (){},
                      ),
                  )
                ],
              ),

              body:ProductList()
            //body:ProductList()

          );
        }
    );
  }
}
