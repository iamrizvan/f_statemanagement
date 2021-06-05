import 'package:f_statemanagement/model/user.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  final user = User().obs;
  updateUser(int count) {
    user.update((val) {
      val.name = "Mohd Rizvan";
      val.count = count;
    });
  }
}
