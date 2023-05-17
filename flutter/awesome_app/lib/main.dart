import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Awesome app',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dashboard'.toUpperCase(),
          ),
        ),
        body: const Center(
          child: Text.rich(
            TextSpan(
              text: 'My',
              children: [
                TextSpan(
                  text: 'Flutter',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                TextSpan(
                  text: 'App',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
