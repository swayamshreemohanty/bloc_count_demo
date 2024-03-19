import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(0)) {
    on<CounterEvent>((event, emit) {
      if (event is Increment) {
        emit(CounterState(state.counter + 1));
      } else if (event is Decrement) {
        if (state.counter > 0) {
          emit(CounterState(state.counter - 1));
        }
      }
    });
  }
}
