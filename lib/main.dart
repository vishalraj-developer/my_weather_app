import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_weather_app/bloc/weather_bloc.dart';
import 'package:my_weather_app/data/local_data.dart';
import 'package:my_weather_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<WeatherBloc>(
        create: (context) => WeatherBloc()..add(FetchWeather(DEFAULTCITY)),
        child: const MyHomePage(),
      ),
    );
  }
}
