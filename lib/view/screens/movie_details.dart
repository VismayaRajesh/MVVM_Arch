import 'package:basic_movieapp_mvvm_learnings/constants/my_app_constants.dart';
import 'package:basic_movieapp_mvvm_learnings/widgets/Movies/fav_btn.dart';
import 'package:basic_movieapp_mvvm_learnings/widgets/cached_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/Movies/genres_list_widget.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              SizedBox(
                height: size.height*0.45,
                width: double.infinity,
                child: CachedImage(imgurl: MyAppConstants.movieImage),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: size.height*0.4,
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Material(
                            borderRadius: BorderRadius.circular(20),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  const SizedBox(height: 25),
                                  const Text(
                                    "Movie Title",
                                    maxLines: 2,
                                    style: TextStyle(
                                      // color: Theme.of(context).textSelectionColor,
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  const SizedBox(height: 5.0),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 20,
                                      ),
                                      SizedBox(width: 5),
                                      Text("9/10"),
                                      Spacer(),
                                      Text(
                                        "Release Date",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  const GenresListWidget(),
                                  const SizedBox(height: 15),
                                  Text(
                                    "overview " * 200,
                                    textAlign: TextAlign.justify,
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: FavoriteBtnWidget(),
                            )),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                top: 5,
                left: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const BackButton(),
                ),
              ),
            ],
          )
      ),
    );
  }
}
