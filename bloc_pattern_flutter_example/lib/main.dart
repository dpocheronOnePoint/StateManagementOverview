import 'package:bloc_pattern_flutter_example/blocs/todos/todos_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './screens/home_screen.dart';
import 'models/todo_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => TodosBloc()
            ..add(
              LoadTodos(
                todos: [
                  Todo(
                      id: '1',
                      task: 'Sample ToDo 1',
                      description: 'This is a test To Do'),
                  Todo(
                      id: '2',
                      task: 'Sample ToDo 2',
                      description: 'This is a test To Do'),
                ],
              ),
            ),
        ),
      ],
      child: MaterialApp(
        title: 'BloC Pattern - Todos',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
