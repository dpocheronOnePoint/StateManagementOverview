import 'package:bloc/bloc.dart';
import 'package:bloc_pattern_flutter_example/models/todo_filter_model.dart';
import 'package:equatable/equatable.dart';

import '../../models/todo_model.dart';

part 'todos_filter_event.dart';
part 'todos_filter_state.dart';

class TodosFilterBloc extends Bloc<TodosFilterEvent, TodosFilterState> {
  TodosFilterBloc() : super(TodosFilterInitial()) {
    on<TodosFilterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
