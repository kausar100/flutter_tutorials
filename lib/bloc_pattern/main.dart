// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_practice/bloc_pattern/counter_bloc.dart';
import 'package:flutter_practice/bloc_pattern/counter_event.dart';

class MyBlocExample extends StatelessWidget {
  const MyBlocExample({super.key});

  @override
  Widget build(BuildContext context) {
    final _bloc = CounterBloc();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc State Management'),
      ),
      body: Center(
        child: StreamBuilder(
          initialData: 0,
          stream: _bloc.counter,
          builder: (context, snapshot) {
            return Text(
              'value of counter : ${snapshot.data}',
              textScaleFactor: 2,
            );
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => _bloc.counterEventInput.add(IncrementCounter()),
            child: Icon(Icons.add),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () => _bloc.counterEventInput.add(DecrementCounter()),
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
