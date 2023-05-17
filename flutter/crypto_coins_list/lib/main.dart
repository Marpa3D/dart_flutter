import 'package:flutter/material.dart';

void main() {
  runApp(const CriptoCurrencyListApp());
}

class CriptoCurrencyListApp extends StatelessWidget {
  const CriptoCurrencyListApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cripto Currency List',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 39, 38, 38),
        primarySwatch: Colors.yellow,
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 22,
          ),
          labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontWeight: FontWeight.w300,
            fontSize: 14,
          ),
        ),
      ),
      home: const MyHomePage(title: 'Cripto Currency List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, i) => ListTile(
          title: Text(
            "Coins",
            style: theme.textTheme.bodyMedium,
          ),
          subtitle: Text(
            '22000\$',
            style: theme.textTheme.labelSmall,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
