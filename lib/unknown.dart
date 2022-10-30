import 'package:flutter/material.dart';
class Unknown extends StatelessWidget {
  const Unknown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Final Screen'),),
      body: Center(child: Text('Unknown Route'),),
    );
  }
}
