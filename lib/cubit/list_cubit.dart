// list_cubit.dart
import 'package:bloc/bloc.dart';
import 'package:my_app/cubit/list_state.dart';

class ListCubit extends Cubit<ListState> {
  ListCubit() : super(const ListState());

  void addItem(String item) {
    final updatedList = [...state.items, item];
    emit(ListState(items: updatedList));
  }
}
