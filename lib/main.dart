import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/cubit/list_cubit.dart';
import 'package:my_app/cubit/list_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ListCubit(),
        child: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Cubit Example'),
      ),
      body: BlocBuilder<ListCubit, ListState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(state.items[index]),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: TextEditingController(),
                  decoration: const InputDecoration(
                    hintText: 'Enter new item',
                  ),
                  onSubmitted: (value) {
                    context.read<ListCubit>().addItem(value);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
