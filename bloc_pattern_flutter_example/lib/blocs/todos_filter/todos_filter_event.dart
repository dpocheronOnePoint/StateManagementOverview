part of 'todos_filter_bloc.dart';

abstract class TodosFilterEvent extends Equatable {
  const TodosFilterEvent();

  @override
  List<Object> get props => [];
}

class UpdateTodos extends TodosFilterEvent {
  final TodoFilter todosFilter;
  const UpdateTodos({this.todosFilter = TodoFilter.all});
}
