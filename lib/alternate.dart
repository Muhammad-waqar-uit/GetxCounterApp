import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:const Text('Home')),
        body:  Column(
          children: [ Text('${Get.parameters['somevalue']}'),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Dialog')),
          Text("${Get.parameters['somevalue']}")],
        ),
    );
  }
}
