import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/update_profile.dart';
import 'package:login_flutter_app/src/repository/authentication_repository/authentication_repository.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
          title:
              Text(tProfile, style: Theme.of(context).textTheme.headlineSmall),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: const Image(image: AssetImage(tProfliePicture))),
                  ),
                  const SizedBox(height: 10),
                  Text(tProfileHeading,
                      style: Theme.of(context).textTheme.headlineMedium),
                  Text(tProfileSubHeading,
                      style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(height: 20),
                  SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () =>
                              Get.to(() => const UpdateProfileScreen()),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: tPrimaryColor,
                              side: BorderSide.none,
                              shape: const StadiumBorder()),
                          child: const Text(tEditProfile,
                              style: TextStyle(color: tDarkColor)))),
                  const SizedBox(height: 20),
                  const Divider(),
                  const SizedBox(height: 20),

                  //menu
                  ProfileMenuWidget(
                      title: "Settings",
                      icon: LineAwesomeIcons.cog,
                      onPress: () {}),
                  ProfileMenuWidget(
                      title: "Billing Details",
                      icon: LineAwesomeIcons.wallet,
                      onPress: () {}),
                  ProfileMenuWidget(
                      title: "User Management",
                      icon: LineAwesomeIcons.user_check,
                      onPress: () {}),
                  ProfileMenuWidget(
                      title: "Information",
                      icon: LineAwesomeIcons.info,
                      onPress: () {}),
                  ProfileMenuWidget(
                      title: "Logout",
                      icon: LineAwesomeIcons.alternate_sign_out,
                      textColor: Colors.red,
                      endIcon: false,
                      onPress: () {
                        AuthenticationRepository.instance.logout();
                      }),
                ],
              )),
        ));
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: tAccentColor.withOpacity(0.1),
        ),
        child: Icon(icon, color: tAccentColor),
      ),
      title: Text(title,
          style:
              Theme.of(context).textTheme.bodyMedium?.apply(color: textColor)),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: const Icon(LineAwesomeIcons.angle_right,
                  size: 18.0, color: Colors.grey))
          : null,
    );
  }
}
