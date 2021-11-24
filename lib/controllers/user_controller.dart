import 'package:counterx/api/users_api.dart';
import 'package:counterx/models/user.dart';
import 'package:counterx/pages/profile_page.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class UserController extends GetxController {
  List<User> _users = [];

  bool _loading = true;
  bool get loading => _loading;

  List<User> get users => _users;

  @override
  void onReady() {
    super.onReady();
    this.loadUsers();
  }

  Future<void> loadUsers() async {
    final data = await UsersAPI.instance.getUsers(1);
    this._users = data!;
    this._loading = false;
    update(['users']);
  }
  Future<void> showUserProfile(User user) async{
    final result = await Get.to<String>(
      ProfilePage(),
      arguments: user

    );
    if (result != null) {
      print ("result $result");
    }

  }

}
