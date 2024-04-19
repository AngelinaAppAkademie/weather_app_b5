import 'package:flutter/material.dart';
import 'package:weather_app_b5/presentation/weather_widget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Wetter",
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: const WeatherWidget(),
      ),
    );
  }
}
