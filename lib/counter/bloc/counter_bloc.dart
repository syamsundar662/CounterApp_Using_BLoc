import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if(event is IncrementEvent){
        emit(CounterState(counterValue: state.counterValue +1));
      }
      if(event is DecrementEvent){
        emit(CounterState(counterValue: state.counterValue -1));
      }
    });
  }
}
