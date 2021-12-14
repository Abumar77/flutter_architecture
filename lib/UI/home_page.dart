import 'package:flutter/material.dart';
import '../Business%20Logic/something_controller.dart';
import '../Data/Model/answer.dart';

import '../locator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Answer answer = const Answer(name: 'null', number: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '${answer.name}  ${answer.number}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          var resultAnswer = locator.get<SomethingController>().getSomething();
          setState(() {
            answer = resultAnswer!;
          });
        },
      ),
    );
  }
}
