import 'package:addictionsupportroom/controller/auth/auth_controller.dart';
import 'package:addictionsupportroom/util/util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../../../util/reuseables/custom_text.dart';

class AvatarBottomSheet extends StatelessWidget {
  const AvatarBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.35,
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppSpace.vertical16,
            const CustomTextWidget(
              text: 'Select Avatar',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              textColor: Color.fromRGBO(32, 78, 101, 1),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Consumer<AuthController>(
                builder: (_, authController, __) {
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 85,
                            childAspectRatio: 1 / 1,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemCount: authController.avatars.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              authController
                                  .toggleAvatar(authController.avatars[index]);
                              Navigator.pop(context);
                            },
                            child: CachedNetworkImage(
                              imageUrl: authController.avatars[index],
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                height: 66,
                                width: 66,
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
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
