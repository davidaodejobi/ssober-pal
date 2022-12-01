import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class ContinueToHomescreen extends StatefulWidget {
  const ContinueToHomescreen({Key? key}) : super(key: key);

  @override
  State<ContinueToHomescreen> createState() => _ContinueToHomescreenState();
}

class _ContinueToHomescreenState extends State<ContinueToHomescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "How many bottles do you take in a week ?",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[0-9]'),
                  ),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                  hintText: 'Enter Number of bottles',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple.shade400),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 150,
            ),
            SizedBox(
              height: 40,
              width: 350,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  context.go('/main_screen');
                },
                child: const Text("Continue to Homescreen"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
