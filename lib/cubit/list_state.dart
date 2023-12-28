// list_state.dart
import 'package:equatable/equatable.dart';

class ListState extends Equatable {
  final List<String> items;

  const ListState({this.items = const []});

  @override
  List<Object?> get props => [items];
}
