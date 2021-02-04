import 'package:demo_final_counter/counter_event.dart';
import 'package:demo_final_counter/counter_state.dart';
import 'package:bloc/bloc.dart';

// class CounterBloc extends Bloc<CounterEvent,CounterState> {
//   int count = 0;
//   CounterBloc(): super(CounterState());
//
//   // TODO: implement initialState
//   CounterState get initialState => Success(count);
//   @override
//   Stream<CounterState> mapEventToState(CounterEvent event) async* {
//     // TODO: implement mapEventToState
//     if(event is Increment) {
//       yield Success(count + event.counterIn);
//     } else if (event is Decrement) {
//       yield Success(count - event.counterDe);
//     }
//   }
// }

class CounterBloc extends Bloc<DataEvent, DataState> {
  CounterBloc(): super(DataState());

  int count = 0;

  @override
  Stream<DataState> mapEventToState(DataEvent event) async* {
    if (event is Increment) {
      yield Loading();
      await Future.delayed(Duration(seconds: 1));
      count++;
      yield Success(count);
    } else if (event is InitData) {
      yield Loading();
      await Future.delayed(Duration(seconds: 1));
      yield Success(count);
    }
  }
}