part of 'todo_bloc_bloc.dart';

@immutable
sealed class TodoBlocEvent {}

final class TodoEventAdd extends TodoBlocEvent {
  final String title;
  final DateTime date;
  TodoEventAdd({required this.date, required this.title});
}

final class TodoEventComplete extends TodoBlocEvent {
  final int index;

  TodoEventComplete({required this.index});
}

final class TodoSelectDate extends TodoBlocEvent {
  final DateTime date;
  TodoSelectDate({required this.date});
}
