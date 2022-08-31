part of 'slider_bloc.dart';

class SliderState {
  final double sliderValue;
  List<Color> colors = [
    Colors.green,
    Colors.orange,
    Colors.black,
    Colors.brown
  ];
  SliderState({
    required this.sliderValue,
  });

  factory SliderState.inital() {
    return SliderState(sliderValue: 0.0);
  }

  SliderState copyWith({double? sliderValue}) {
    return SliderState(sliderValue: sliderValue ?? this.sliderValue);
  }
}
