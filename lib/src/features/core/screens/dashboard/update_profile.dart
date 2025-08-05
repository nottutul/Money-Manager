import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authentication/controllers/profile_controller.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title: Text(tEditProfile,
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: //FutureBuilder(
                // future: controller.getUserData(),
                // builder: (contex, snapshot) {
                // if (snapshot.connectionState == ConnectionState.done) {
                //   if (snapshot.hasData) {
                //     UserModel userData = snapshot.data as UserModel;
                //     return
                Column(
              children: [
                SizedBox(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(image: AssetImage(tProfliePicture))),
                ),
                const SizedBox(height: 50),
                Form(
                    child: Column(children: [
                  TextFormField(
                    //initialValue: userData.fullName,
                    decoration: const InputDecoration(
                        label: Text(tFullName),
                        prefixIcon: Icon(Icons.person_outline_rounded)),
                  ),
                  const SizedBox(height: tFormHeight - 20),
                  TextFormField(
                    //initialValue: userData.email,
                    decoration: const InputDecoration(
                        label: Text(tEmail),
                        prefixIcon: Icon(Icons.email_outlined)),
                  ),
                  const SizedBox(height: tFormHeight - 20),
                  TextFormField(
                    //initialValue: userData.phoneNo,
                    decoration: const InputDecoration(
                        label: Text(tPhoneNo), prefixIcon: Icon(Icons.numbers)),
                  ),
                  const SizedBox(height: tFormHeight - 20),
                  TextFormField(
                    //initialValue: userData.password,
                    decoration: const InputDecoration(
                        label: Text(tPassword),
                        prefixIcon: Icon(Icons.fingerprint)),
                  ),
                  const Divider(),
                  const Divider(),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () =>
                              Get.to(() => const UpdateProfileScreen()),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: tPrimaryColor,
                              side: BorderSide.none,
                              shape: const StadiumBorder()),
                          child: const Text(tUpdateProfile,
                              style: TextStyle(color: tDarkColor)))),
                ]))
              ],
            )
            //     } else if (snapshot.hasError) {
            //       return Center(child: Text(snapshot.error.toString()));
            //     } else {
            //       return const Center(child: Text("Something went wrong"));
            //     }
            //   } else {
            //     return const Center(child: CircularProgressIndicator());
            //   }
            // },
            ),
      ),
    );
  }
}
