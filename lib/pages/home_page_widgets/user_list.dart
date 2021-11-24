
import 'package:counterx/controllers/user_controller.dart';
import 'package:counterx/models/user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserController>(
        id: 'users',
        builder: (_){
          if(_.loading){
            return Center(
              child: LinearProgressIndicator(),
            );
          }
      return ListView.builder(
        itemBuilder: (contex,index){
          final User user = _.users[index];
          return ListTile(
              title: Text(user.firstName ),
              subtitle: Text(user.email),
            onTap: ()=> _.showUserProfile(user),
          );
        },
        itemCount: _.users.length,
      );
    });
  }
}
