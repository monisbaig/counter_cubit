import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState.initial());

  void increment() {
    var newState = state.copyWith(counter: state.counter + 1);
    emit(newState);
  }

  void decrement() {
    var newState = state.copyWith(counter: state.counter - 1);
    emit(newState);
  }
}
