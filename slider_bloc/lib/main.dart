import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/slider_bloc.dart';
import 'screens/slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BlocProvider(
        create: (context) => SliderBloc(),
        child: MaterialApp(
          home: MySliderApp(),
        ),
      ),
    );
  }
}
