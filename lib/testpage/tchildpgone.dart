import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TestcPageone extends StatefulWidget {
  const TestcPageone({super.key});

  @override
  State<TestcPageone> createState() => _TestcPageoneState();
}

class _TestcPageoneState extends State<TestcPageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Center(
                child: Text(
              "Testing Page Child one",
              style: TextStyle(color: Colors.blue),
            ))));
  }
}
