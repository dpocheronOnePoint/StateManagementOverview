part of 'todos_filter_bloc.dart';

abstract class TodosFilterState extends Equatable {
  const TodosFilterState();

  @override
  List<Object> get props => [];
}

class TodosFilterLoading extends TodosFilterState {}

class TodosFilterLoaded extends TodosFilterState {
  final List<Todo> filterTodos;
  final TodoFilter todosFilter;

  const TodosFilterLoaded(
      {required this.filterTodos, this.todosFilter = TodoFilter.all});

  @override
  List<Object> get props => [filterTodos, todosFilter];
}
