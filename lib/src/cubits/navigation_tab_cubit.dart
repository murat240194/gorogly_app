import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationTabCubit extends Cubit<int> {
  NavigationTabCubit() : super(0);

  void setTab(int index) => emit(index);
}
