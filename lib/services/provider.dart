import 'package:get_it/get_it.dart';
import 'package:flutter_tic_tac_final/services/alert.dart';
import 'package:flutter_tic_tac_final/services/board.dart';
import 'package:flutter_tic_tac_final/services/sound.dart';

GetIt locator = GetIt();
void setupLocator(){
  locator.registerSingleton(BoardService());
  locator.registerSingleton(SoundService());
  locator.registerSingleton(AlertService());

}