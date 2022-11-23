import 'dart:async';

import 'package:flutter_practice/bloc_pattern/from_scratch/counter_event.dart';

class CounterBloc {
  int _counter = 0;
  
  CounterBloc() {
    //input event
    _counterEventController.stream.listen(_mapEventToState);
  }

  //state controller (output)
  final _counterStateController = StreamController<int>();
  StreamSink<int> get _counterInput => _counterStateController.sink;
  //output state by this
  Stream<int> get counter => _counterStateController.stream;

  //event controller (input)
  final _counterEventController = StreamController<CounterEvent>();
  Sink<CounterEvent> get counterEventInput => _counterEventController.sink;

  //connect event to state
  void _mapEventToState(CounterEvent event) {
    if (event is IncrementCounter) {
      _counter++;
    } else if (event is DecrementCounter) {
      _counter--;
    }
    _counterInput.add(_counter);
  }
}
