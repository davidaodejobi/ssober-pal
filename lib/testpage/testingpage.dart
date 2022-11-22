import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
            onTap: () {
              context.go("/testtwo");
            },
            child: const Center(child: Text("Testing"))));
  }
}
