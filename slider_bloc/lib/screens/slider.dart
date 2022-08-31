import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/slider_bloc.dart';

class MySliderApp extends StatefulWidget {
  MySliderApp({Key? key}) : super(key: key);

  @override
  _MySliderAppState createState() => _MySliderAppState();
}

class _MySliderAppState extends State<MySliderApp> {
  int _value = 6;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SliderBloc, SliderState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Flutter Slider Demo'),
          ),
          body: Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Slider(
                value: state.sliderValue,
                min: 0.0,
                max: 3.0,
                divisions: 3,
                activeColor: state.colors[state.sliderValue.toInt()],
                onChanged: (double newValue) => context
                    .read<SliderBloc>()
                    .add(OnSliderValueChange(newValue)),
              ),
            ),
          ),
        );
      },
    );
  }
}
