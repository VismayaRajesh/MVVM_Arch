import 'package:basic_movieapp_mvvm_learnings/constants/my_app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoriteBtnWidget extends StatelessWidget {
  const FavoriteBtnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: () {},
        icon: Icon(MyAppIcons.favoritebtnounded));
  }
}

