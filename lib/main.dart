import 'package:flutter/material.dart';
import 'controller/increment.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Provider",
      home: ProviderData(),
    );
  }
}

class ProviderData extends StatelessWidget {
  final IncrementController incrementController =
      Get.put(IncrementController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Provider'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(() => Text(
                      'Press Button to Increment ${incrementController.increment}',
                      textScaleFactor: 2.0,
                    )),
                MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    incrementController.add();
                  },
                  child: Text('Increment'),
                )
              ],
            ),
          ],
        ));
  }
}
