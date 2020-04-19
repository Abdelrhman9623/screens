import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './screens/homeScreen.dart';

void main() => runApp(DevicePreview(
  builder: (context) => MyApp(),
  enabled: !kReleaseMode,
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ui',
      theme: ThemeData( 
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
