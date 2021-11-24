import 'package:counterx/controllers/home_controller.dart';
import 'package:counterx/pages/home_page_widgets/home_list.dart';
import 'package:counterx/pages/home_page_widgets/user_list.dart';
import 'package:counterx/pages/product_page.dart';
import 'package:counterx/pages/reactive_page.dart';
import 'package:counterx/pages/user_page.dart';
import 'package:counterx/widgets/product_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller = HomeController();
TextStyle estiloTx = TextStyle(fontSize: 40);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: _controller,
        builder: (_){
      return Scaffold(
        appBar: AppBar(
          title: Text ('GutterX'),
          centerTitle: true,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Text('Taps:', style: estiloTx),
              GetBuilder<HomeController>(
                id: 'text',
                builder: (_)=>
                  Text(_.counter.toString(), style: estiloTx),
              )


            ],
          ),
        ),



        floatingActionButton:
        Column(
          children: <Widget>[
            SizedBox(height: 125),
            FloatingActionButton(
              child: Icon (Icons.list),
              onPressed: (){
              Get.to(()=> HomeList());
            },
            ),

            Expanded(child: SizedBox()),

            FloatingActionButton(child: Icon (Icons.exposure_zero), onPressed: (){
              _.reset();
            }),

            SizedBox(height: 10),

            FloatingActionButton(child: Icon (Icons.remove), onPressed: (){
              _.decrement();
            }),
            SizedBox(height: 10),
            FloatingActionButton(child: Icon(Icons.add), onPressed: (){_.increment();
            }),

          ],
        ),



      );
    }
    );
  }
}
