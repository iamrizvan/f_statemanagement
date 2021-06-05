import 'package:f_statemanagement/controller/sum_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Second extends StatelessWidget {
  final SumController _sumController = Get.put(SumController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX  |  State Management'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 50),
          Obx(() {
            return Text('Count #1:     ${_sumController.count1}');
          }),
          Text('                      +'),
          Obx(() {
            return Text('Count #2:     ${_sumController.count2}');
          }),
          Text('                      +'),
          Obx(() {
            return Text('Sum             ${_sumController.sum}');
          }),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
              child: Text("Increment Counter #1"),
              onPressed: () {
                _sumController.increment1();
              }),
          SizedBox(
            height: 30,
          ),
          RaisedButton(
              child: Text("Increment Counter #2"),
              onPressed: () {
                _sumController.increment2();
              }),
        ]),
      ),
    );
  }
}
