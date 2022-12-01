import 'package:addictionsupportroom/util/util.dart';
import 'package:addictionsupportroom/view/shared/app_eleevated_button.dart';
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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              context.pop();
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppSpace.vertical4,
              Column(
                children: [
                  const Center(
                    child: Text(
                      "How many bottles do you take in a week ?",
                      textAlign: TextAlign.start,
                      style: AppText.h5medium,
                    ),
                  ),
                  AppSpace.vertical8,
                  TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(
                        RegExp(r'[0-9]'),
                      ),
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    decoration: InputDecoration(
                      hintText: 'Enter the number of bottles',
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.deepPurple.shade400),
                      ),
                    ),
                  ),
                ],
              ),
              AppElevatedButton(
                onPressed: () => context.go(
                  '/main_screen',
                ),
                text: 'Continue to Home Screen',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
