
import 'package:counterx/controllers/home_controller.dart';
import 'package:counterx/pages/message_page.dart';
import 'package:counterx/pages/product_page.dart';
import 'package:counterx/pages/reactive_page.dart';
import 'package:counterx/pages/user_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeList extends StatelessWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(

      builder: (_)=>Scaffold(
      appBar: AppBar(
        title: Text('Directorio'),
      ),
        body: ListView(
          children: <Widget>[
          ListTile(
            title: Text('Tienda'),
            trailing: Icon(Icons.add_shopping_cart_outlined),
            onTap: (){
              Get.to(()=> ProductPage());
            },
          ),

            Divider(),

            ListTile(
              title: Text('Calendario'),
              trailing: Icon(Icons.calendar_today),
              onTap: (){
                Get.to(()=> ReactivePage());
              },
            ),

            Divider(),

            ListTile(
              title: Text('Perfiles'),
              trailing: Icon(Icons.account_box_outlined),
              onTap: (){
                Get.to(()=> UserPage());
              },
            ),
            Divider(),
            ListTile(
              title: Text('Message'),
              trailing: Icon(Icons.chat),
              onTap: (){
                Get.to(()=> MessagePage());
              },

            ),
        ]
            )
    ),
    );
  }
}
