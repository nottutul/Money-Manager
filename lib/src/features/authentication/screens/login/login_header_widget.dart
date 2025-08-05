import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/image_string.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: const AssetImage(tLoginImage), height: size.height * 0.4),
        Text(tLoginTitle, style: Theme.of(context).textTheme.displaySmall),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
