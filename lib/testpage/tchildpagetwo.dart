import 'package:flutter/material.dart';

class TestcPagetwo extends StatefulWidget {
  const TestcPagetwo({super.key});

  @override
  State<TestcPagetwo> createState() => _TestcPagetwoState();
}

class _TestcPagetwoState extends State<TestcPagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
            onTap: () {
              //context.router.pushNamed("/testtwo/ctestone");
            },
            child: const Center(
                child: Text(
              "Testing Page Child one",
              style: TextStyle(color: Colors.blue),
            ))));
  }
}
