import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/material.dart';
import 'package:main_application/search_result.dart';

void main() => runApp( MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  var titleText = 'Ad hoc communication between mobile devices during disasters';

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(titleText: titleText),
    );
  }
}

class Home extends StatelessWidget{
  final String titleText;
  // ignore: use_key_in_widget_constructors
  const Home({required this.titleText});

  void requestPermission() async {
    final status = await Permission.bluetooth.request();
    if (!status.isGranted){
      await Future.delayed(const Duration(seconds: 1));
      openAppSettings();
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ad hoc communication between mobile devices during disasters',
      theme: ThemeData(primarySwatch: Colors.cyan),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
              'Ad hoc communication between mobile devices during disasters'),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 400,
                  height: 60,

                  child: OutlinedButton(
                      child: const Text(
                        'Search Device',
                        style: TextStyle(fontSize: 50),
                      ),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.cyan,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SearchResult()),
                        );
                      }
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
