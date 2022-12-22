import 'package:flutter/material.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

bool _iconBool = false;

IconData _iconLight = Icons.wb_sunny;
IconData _iconNight = Icons.nights_stay;

ThemeData _lightTheme =
    ThemeData(primarySwatch: Colors.amber, brightness: Brightness.light);

ThemeData _darkTheme =
    ThemeData(primarySwatch: Colors.red, brightness: Brightness.dark);

class _settingState extends State<setting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          ),
          title: const Text("Dark & Light Theme"),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    _iconBool = !_iconBool;
                  });
                },
                icon: Icon(_iconBool ? _iconLight : _iconNight)),
          ],
        ),
      ),
    );
  }
}
