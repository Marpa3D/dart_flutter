import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awesome app',
      home: Scaffold(
        body: Center(
          child: Text(
            'Привет. Заряжено во Flutter!',
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    ),
  );
}
