//
// @Author: "Eldor Turgunov"
// @Date: 30.01.2024
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'controller/profile_controller.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('lbl_profile'.tr),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
            //circular indicator and edit icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(
                          'https://avatars.mds.yandex.net/i?id=c12bcb1b4b927242278253a4173b3f51992ccfe1-10995513-images-thumbs&n=13'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        radius: 15,
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            //user Full name
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Eldor Turgunov',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //user email address
            const Text(
              'eldor@mail.ru',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
            ),
            //edit profile, notification, change password, logout
            const SizedBox(height: 20),
            //edit profile
            ListTile(
              onTap: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
              leading: const Icon(CupertinoIcons.person),
              title:  Text('edit_profile'.tr),
              trailing: const Icon(CupertinoIcons.right_chevron),
            ),
            //notification
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
              onTap: () {},
              leading: const Icon(Iconsax.notification),
              title:  Text('lbl_notifications'.tr),
              trailing: const Icon(CupertinoIcons.right_chevron),
            ),
            //language settings
            ListTile(
              onTap: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: 300,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              onTap: () => controller.changeLanguage('en_US'),
                              leading: SvgPicture.asset(
                                'assets/svg/flag-united-kingdom.svg',
                                width: 30,
                              ),
                              title:  Text(
                                'lbl_english'.tr,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const Divider(height: 1, thickness: 1),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              onTap: () => controller.changeLanguage('ru_RU'),
                              leading: SvgPicture.asset(
                                'assets/svg/flag-russia.svg',
                                width: 30,
                              ),
                              title:  Text(
                                'lbl_russian'.tr,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          const Divider(height: 1, thickness: 1),
                          //uzbekistan language
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              onTap: () => controller.changeLanguage('uz_UZ'),
                              leading: SvgPicture.asset(
                                'assets/svg/flag-uzbekistan.svg',
                                width: 30,
                              ),
                              title:  Text(
                                'lbl_uzbek'.tr,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          //kazakhstan language
                          const Divider(height: 1, thickness: 1),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              onTap: () => controller.changeLanguage('kz_KZ'),
                              leading: SvgPicture.asset(
                                'assets/svg/flag-kazakhstan.svg',
                                width: 30,
                              ),
                              title:  Text(
                                'lbl_kazakh'.tr,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
              leading: const Icon(Iconsax.language_circle),
              title:  Text('lbl_languages'.tr),
              trailing: const Icon(CupertinoIcons.right_chevron),
            ),
            //change password
            ListTile(
              onTap: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
              leading: const Icon(Iconsax.lock),
              title:  Text('lbl_change_password'.tr),
              trailing: const Icon(CupertinoIcons.right_chevron),
            ),
            //logout
            ListTile(
              onTap: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
              leading: const Icon(Iconsax.logout),
              title:  Text('lbl_logout'.tr),
              trailing: const Icon(CupertinoIcons.right_chevron),
            ),
          ],
        ),
      ),
    );
  }
}
