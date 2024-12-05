import 'package:basic_movieapp_mvvm_learnings/constants/my_app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyErrorWidget extends StatelessWidget {
  const MyErrorWidget({super.key, required this.errorText, required this.RetryFunction});

  final String errorText;
  final Function RetryFunction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            MyAppIcons.error,
            color: Colors.red,
            size: 50,
          ),
          const SizedBox(height: 15),
          Text(
          "$errorText",
              style: const TextStyle(color: Colors.red, fontSize: 16)),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: (){
            RetryFunction();
          }, child: Text("Retry", style: TextStyle(color: Colors.white)))
        ],
      ),
    );
  }
}
