import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TestPagetwo extends StatefulWidget {
  const TestPagetwo({super.key});

  @override
  State<TestPagetwo> createState() => _TestPagetwoState();
}

class _TestPagetwoState extends State<TestPagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
            onTap: () {
              context.go("/testtwo/settings");
            },
            child: const Center(
                child: Text(
              "Testing s Page two",
              style: TextStyle(color: Colors.amber),
            ))));
  }
}
