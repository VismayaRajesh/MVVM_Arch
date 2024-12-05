import 'package:basic_movieapp_mvvm_learnings/constants/my_app_colors.dart';
import 'package:basic_movieapp_mvvm_learnings/constants/my_app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/my_app_icons.dart';
import '../../widgets/Movies/movie_widget.dart';
import '../../widgets/cached_image.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Movies"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(MyAppIcons.favorite), color: MyAppColors.redcolor,),
          IconButton(onPressed: () {}, icon: Icon(MyAppIcons.darkmode))
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
