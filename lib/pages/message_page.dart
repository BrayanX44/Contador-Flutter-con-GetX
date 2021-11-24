
import 'package:counterx/controllers/socket_client_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class MessagePage extends StatelessWidget {
  final MessagePage _controller = MessagePage();

  @override
  Widget build(BuildContext context) {
    final socketController = Get.find<SocketClientController>();
    Get.put(SocketClientController());
          return Scaffold(
              appBar: AppBar(
                title: Text('Message'),
              ),
              body:
              Center(
              child: Obx(()=> Text(socketController.message.value)),
              )
            //body:ProductList()

          );


  }
}
