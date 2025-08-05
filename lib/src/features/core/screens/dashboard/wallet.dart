import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {}, icon: const Icon(LineAwesomeIcons.angle_left)),
          title: Text("Bank Accounts",
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(tDefaultSize),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: tPrimaryColor,
                              side: BorderSide.none,
                              shape: const StadiumBorder()),
                          child: const Text("Add Bank Accounts",
                              style: TextStyle(color: tDarkColor)))),
                  const SizedBox(height: 20),
                  const Divider(),
                  const SizedBox(height: 20),
                ],
              )),
        ));
  }
}
