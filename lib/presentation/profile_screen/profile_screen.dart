//
// @Author: "Eldor Turgunov"
// @Date: 30.01.2024
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'controller/profile_controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
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
              title: const Text('Edit Profile'),
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
              title: const Text('Notification'),
              trailing: const Icon(CupertinoIcons.right_chevron),
            ),
            //language settings
            ListTile(
              onTap: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              splashColor: Theme.of(context).primaryColor.withOpacity(0.2),
              leading: const Icon(Iconsax.language_circle),
              title: const Text('Language'),
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
              title: const Text('Change Password'),
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
              title: const Text('Logout'),
              trailing: const Icon(CupertinoIcons.right_chevron),
            ),
          ],
        ),
      ),
    );
  }
}
