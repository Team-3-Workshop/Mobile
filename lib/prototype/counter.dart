import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final TextEditingController _counterController = TextEditingController();

  @override
  void initState() {
    _counterController.text = '$_counter';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter--;
                      _counterController.text = '$_counter';
                    });
                  },
                  child: Icon(
                    Icons.horizontal_rule_rounded,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 60,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    controller: _counterController,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter++;
                      _counterController.text = '$_counter';
                    });
                  },
                  child: Icon(
                    Icons.add,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
