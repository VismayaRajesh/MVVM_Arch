import 'package:basic_movieapp_mvvm_learnings/widgets/Movies/my_error_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyErrorWidget(errorText: "errorText", RetryFunction: (){})
    );
  }
}
