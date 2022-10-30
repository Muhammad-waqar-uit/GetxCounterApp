import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List',
      initialRoute: '/on',
      defaultTransition: Transition.zoom
      ,getPages: [
      GetPage(name: '/on', page: ()=> const MyApp()),
      GetPage(name: '/home/:somevalue', page: ()=> const Home()),

    ],
      unknownRoute:GetPage(name: '/notfound', page:()=>Unknown()),
      home: Scaffold(
        appBar: AppBar(title: Text('Navigation'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ElevatedButton(onPressed: ()=>{
              Get.toNamed('/x')
            }, child: Text('Button'))],
          ),
        ),
      ),
    );
  }
}



