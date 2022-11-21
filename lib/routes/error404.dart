import 'package:cloudinary_dart/cloudinary.dart';
import 'package:flutter/material.dart';

class Error404Screen extends StatelessWidget {
  const Error404Screen({super.key});

  @override
  Widget build(BuildContext context) {
    var cloudinary = Cloudinary.fromStringUrl(
        'cloudinary://868118737662215:7bZccQoctAFM_OnKgiC5eCokziM@du4c6jbsw');
    String errorimage = cloudinary.image('error_ob072r.png').toString();
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      foregroundColor: Colors.black87,
      minimumSize: const Size(88, 36),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
    );
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/8_404Error.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.15,
            left: MediaQuery.of(context).size.width * 0.3,
            right: MediaQuery.of(context).size.width * 0.3,
          Image.network(
            errorimage,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 30,
            left: 30,
            right: 30,
            child: TextButton(
              style: flatButtonStyle,
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Go Home".toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
