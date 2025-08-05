import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:login_flutter_app/firebase_options.dart';
import 'package:login_flutter_app/src/data/model/add_date.dart';
//import 'package:login_flutter_app/src/features/core/screens/dashboard/dashboard.dart';
import 'package:login_flutter_app/src/repository/authentication_repository/authentication_repository.dart';
import 'package:login_flutter_app/src/utils/theme/theme.dart';

Future<void> main() async {
  //hive
  await Hive.initFlutter();
  Hive.registerAdapter(AdddataAdapter());
  await Hive.openBox<Add_data>('data');

  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) => Get.put(AuthenticationRepository()));
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(microseconds: 500),
      themeMode: ThemeMode.light,
      home: const CircularProgressIndicator(),
    );
  }
}
