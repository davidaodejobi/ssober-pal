import 'package:addictionsupportroom/profile_screen/profile_screen_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen2 extends StatefulWidget {
  const ProfileScreen2({Key? key}) : super(key: key);

  @override
  State<ProfileScreen2> createState() => _ProfileScreen2State();
}

class _ProfileScreen2State extends State<ProfileScreen2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.network(
                "https://res.cloudinary.com/du4c6jbsw/image/upload/v1668784355/profile-avatar-1_dv4b1c.svg"),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Nickname',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple.shade400),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AvatarSelection(),
                    ),
                  );
                },
                child: const Text("Set Nickname"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
