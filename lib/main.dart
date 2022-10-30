import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxtrainning/alternate.dart';
import 'package:getxtrainning/unknown.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  var count = 0.obs;

  void increment(){
    count++;
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('CounterApp'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [Obx(() => Text('Count value is ${count}')),
              ElevatedButton(onPressed: (){
                increment();
              }, child: Text('Increment'))
            ],
          ),
        ),
      ),
    );
  }
}
