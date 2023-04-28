import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamAIncrement({required int buttonNumber}) {
    teamAPoints += buttonNumber;
    emit(CounterAIncrementState());
  }

  void teamBIncrement({required int buttonNumber}) {
    teamBPoints += buttonNumber;
    emit(CounterBIncrementState());
  }

  void counterResetState() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterResetState());
  }

  // Another Way
  // void teamIncrement({required String team, required int buttonNumber}) {
  //   if(team == 'A') {
  //     teamAPoints += buttonNumber;
  //     emit(CounterAIncrementState());
  //   } else {
  //     teamBPoints += buttonNumber;
  //     emit(CounterBIncrementState());
  //   }
  // }
}
