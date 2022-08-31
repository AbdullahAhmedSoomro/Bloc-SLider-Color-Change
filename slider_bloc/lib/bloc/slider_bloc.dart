import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'slider_event.dart';
part 'slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(SliderState.inital()) {
    on<OnSliderValueChange>((event, emit) {
      print(event.value);
      emit(state.copyWith(sliderValue: event.value));
    });
  }
}
