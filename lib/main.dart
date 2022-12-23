import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:login/Page/Loginscreen.dart';
import 'package:login/Page/profile2.dart';
import 'package:login/pages/BottomBar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Page/startup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences storage = await SharedPreferences.getInstance();
  var data = storage.getString('data');
  print(data);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: data == null ? Loginscreen() : ProfilePage(),
    builder: EasyLoading.init(),
  ));
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
  // ..customAnimation = CustomAnimation();
}

// class login extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         textButtonTheme: TextButtonThemeData(
//           style: TextButton.styleFrom(
//             primary: Colors.white,
//           ),
//         ),
//       ),
//       title: "login",
//       debugShowCheckedModeBanner: false,
//       home: StartUp(),
//     );
//   }
// }
