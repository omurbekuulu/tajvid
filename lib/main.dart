import 'package:flutter/material.dart';
import 'package:tajvid/presentation/pages/main_landing.dart';
import 'package:tajvid/presentation/pages/second_landing.dart';
import 'package:tajvid/presentation/pages/splash.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'TAJVID',
      debugShowCheckedModeBanner: false,
      home: MainLanding(),
    ),
  );
}
