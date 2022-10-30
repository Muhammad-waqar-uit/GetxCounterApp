import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Snackbar'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar('snackbar', 'Snackbar details',
                        snackPosition: SnackPosition.BOTTOM,
                        titleText: Text('Another title'),
                        messageText: Text(
                          'another Message',
                          style: TextStyle(color: Colors.cyan),
                        ),
                        backgroundGradient:
                            LinearGradient(colors: [Colors.cyan, Colors.amber]),
                        borderRadius: 30,
                        maxWidth: 100,
                        animationDuration: Duration(seconds: 3),
                    isDismissible: true,
                    );
                  },
                  child: Text('Button'))
            ],
          ),
        ),
      ),
    );
  }
}
