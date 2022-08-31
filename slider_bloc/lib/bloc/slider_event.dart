part of 'slider_bloc.dart';

abstract class SliderEvent {}

// class OnSliderChangeColor extends SliderEvent{}
class OnSliderValueChange extends SliderEvent {
  final double value;
  OnSliderValueChange(this.value);
}
