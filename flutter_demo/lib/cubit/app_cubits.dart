import 'package:bloc/bloc.dart';
import 'package:flutter_demo/cubit/app_cubit_states.dart';
import '../services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  final DataServices data;
  late final places;

  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  void getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch(e) {

    }
  }
}