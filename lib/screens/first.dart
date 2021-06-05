import 'package:f_statemanagement/controller/count_controller.dart';
import 'package:f_statemanagement/controller/user_controller.dart';
import 'package:f_statemanagement/screens/second.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First extends StatelessWidget {
  final CountController countController = Get.put(CountController());
  final UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetX | State Management"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            GetBuilder<CountController>(builder: (controller) {
              return Text('Current count value :  ${controller.count}');
            }),
            SizedBox(
              height: 50,
            ),
            GetX<UserController>(builder: (controller) {
              return Text('Name :  ${userController.user.value.name}');
            }),
            Obx(() {
              return Text(
                  'Stored Count: ${Get.find<UserController>().user.value.count}');
            }),
            SizedBox(
              height: 50,
            ),
            RaisedButton(
                child: Text('Update Name & Stored count'),
                onPressed: () {
                  Get.find<UserController>().updateUser(countController.count);
                }),
            SizedBox(
              height: 80,
            ),
            RaisedButton(
                child: Text('Next Screen'),
                onPressed: () {
                  Get.to(Second(), transition: Transition.rightToLeft);
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          countController.increment();
        },
      ),
    );
  }
}
