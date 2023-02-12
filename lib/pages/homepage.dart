import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Da Aap"),
      ),
      body: Center(
        child: Container(
          child: Text("This is my first app"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
