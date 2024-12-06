import 'dart:ffi';

import 'package:basic_movieapp_mvvm_learnings/service/navigation_service.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void SetUpLocator(){
  getIt.registerLazySingleton<NavigationService>(() => NavigationService());
}