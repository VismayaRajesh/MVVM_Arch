import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationService{
  late GlobalKey<NavigatorState> navigatorkey ; //type

  NavigationService(){
   navigatorkey = GlobalKey<NavigatorState>();  //initialized
  }
 navigate(Widget widget){
    navigatorkey.currentState!.push(MaterialPageRoute(builder: (BuildContext context) {
      return widget;
    }));
 }

 navigateReplace(Widget widget){
    navigatorkey.currentState!.pushReplacement(MaterialPageRoute(builder: (BuildContext context) {
      return widget;
    }));
 }

 Future<void> ShowDialog(Widget widget) async {
    await showAdaptiveDialog(context: navigatorkey.currentContext!, builder: (BuildContext context) {
      return widget;
    },);
 }

 void ShowsnackBar() {
    ScaffoldMessenger.of(navigatorkey.currentContext!).hideCurrentSnackBar();
    ScaffoldMessenger.of(navigatorkey.currentContext!).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
          content: Text("Error", style: TextStyle(color: Colors.white),))
    );
 }
}