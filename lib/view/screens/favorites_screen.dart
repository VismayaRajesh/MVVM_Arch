import 'package:basic_movieapp_mvvm_learnings/constants/my_app_colors.dart';
import 'package:basic_movieapp_mvvm_learnings/constants/my_app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/my_app_icons.dart';
import '../../widgets/Movies/movie_widget.dart';
import '../../widgets/cached_image.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Favorite Movies"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(MyAppIcons.deletebtn), color: MyAppColors.redcolor,),
          ],
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index){
              return const MoviesWidget();
            })
    );
  }
}
