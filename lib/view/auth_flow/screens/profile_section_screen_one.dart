// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import 'package:addictionsupportroom/controller/auth/auth_controller.dart';
import 'package:addictionsupportroom/util/util.dart';
import 'package:addictionsupportroom/view/auth_flow/widgets/avatar_buttom_sheet.dart';

import '../../shared/app_eleevated_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final authController = Provider.of<AuthController>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 130,
                        width: 130,
                        child: CachedNetworkImage(
                          imageUrl: authController.avatar,
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          placeholder: (context, url) => const Center(
                            child: SpinKitFadingCircle(
                              color: AppColor.primaryColor,
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      ),
                      Positioned(
                        bottom: 6,
                        right: 4,
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              enableDrag: true,
                              builder: (context) => const AvatarBottomSheet(),
                            );
                          },
                          child: Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(2),
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor.grayColor.shade100,
                              ),
                              height: 20,
                              width: 20,
                              child: SvgPicture.asset(
                                'assets/svgs/brush.svg',
                                color: AppColor.primaryColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Enter Nickname",
                      style: AppText.h6medium.copyWith(
                        color: AppColor.grayColor.shade400,
                      ),
                    ),
                  ),
                  AppSpace.vertical8,
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Lion',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurple.shade400,
                        ),
                      ),
                    ),
                  ),
                  AppSpace.vertical32,
                  AppElevatedButton(
                    onPressed: () => context.push(
                      '/continue_to_homescreen',
                    ),
                    text: 'Set Nickname',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
