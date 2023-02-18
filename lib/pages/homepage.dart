import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(30, (index) => catalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog Aap"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
