import 'package:addictionsupportroom/view/intro_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateHome();
  }

  _navigateHome() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const IntroScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image(
              image: NetworkImage(
                  "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668783712/Soberpal_Logo_gtbs5w.svg")),
        ),
      ),
    );
  }
}
