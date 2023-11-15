import 'package:counter_cubit_flutter/cubits/counter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  void increment() {
    final newState = state.copyWith(counter: state.counter + 1);
    emit(newState);
  }

  void decrement() {
    emit(state.copyWith(counter: state.counter - 1));
  }
}
