import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  const CounterState({required this.counter});
  final int counter;

  factory CounterState.initial() {
    return const CounterState(counter: 0);
  }

  @override
  List<Object> get props => [counter];

  @override
  String toString() => "CounterState(counter: $counter)";

  CounterState copyWith({int? counter}) {
    return CounterState(counter: counter ?? this.counter);
  }
}
