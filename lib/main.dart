import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/increment.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Provider'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ChangeNotifierProvider<Increment>(
              create: (context) => Increment(),
              builder: (context, _) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<Increment>(
                    builder: (context, object, _) => Text(
                      'Press Button to Increment ${object.increment}',
                      textScaleFactor: 2.0,
                    ),
                  ),
                  MaterialButton(
                    color: Colors.blue,
                    onPressed: () {
                      Provider.of<Increment>(context, listen: false).add();
                    },
                    child: Text('Increment'),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
