import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: ':D'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double size = 100;
  double opacity = 100;

  void zoom() {
    setState(() {
      if (size >= 0 && size <= 100) {
        size = size + 5;
      }
    });
  }

  void zoomnt() {
    setState(() {
      if (size > 0) {
        size = size - 5;
      }
    });
  }

  void imageopacity() {
    setState(() {
      opacity = opacity - 10.5;
    });
  }

  void reset() {
    setState(() {
      size = 100;
      opacity = 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
                radius: size,
                backgroundColor: Color.fromRGBO(255, 0, 0, opacity)),
            FloatingActionButton(
                onPressed: zoom, tooltip: 'Zoom', child: const Icon(Icons.add)),
            FloatingActionButton(
                onPressed: zoomnt,
                tooltip: 'Zoom',
                child: const Icon(Icons.remove)),
            FloatingActionButton(
                onPressed: imageopacity,
                tooltip: 'Opacity',
                child: const Icon(Icons.opacity),
                backgroundColor: Colors.blueGrey),
            FloatingActionButton(
                onPressed: reset,
                tooltip: 'Reset',
                child: const Icon(Icons.restore)),
          ],
        ),
      ),
    );
  }
}
