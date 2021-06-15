import 'package:anime_slayer_clone/models/models.dart';
import 'package:anime_slayer_clone/widgets/grid_anime_card.dart';
import 'package:flutter/material.dart';

import 'vertical_anime_card.dart';

class CustomBody extends StatefulWidget {
  final bool isGrid;

  const CustomBody({Key? key, required this.isGrid}) : super(key: key);
  @override
  _CustomBodyState createState() => _CustomBodyState();
}

class _CustomBodyState extends State<CustomBody> {
  @override
  Widget build(BuildContext context) {
    bool isGrid = widget.isGrid;
    if (isGrid)
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: (150 / 400),
                crossAxisCount: isGrid ? 3 : 1),
            itemBuilder: (BuildContext context, int index) {
              return AnimeCard(
                anime: Anime(
                    name: "Attck on titan",
                    imageUrl: "https://pbs.twimg.com/media/EZLLDIeU4AAtNvR.jpg",
                    episodeNumber: 20,
                    isDone: false,
                    rating: 9.9),
              );
            }),
      );
    else
      return Padding(
          padding: EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: VerticalAnimeCard(
                  anime: Anime(
                      name: "Attck on titan",
                      imageUrl: "https://pbs.twimg.com/media/EZLLDIeU4AAtNvR.jpg",
                      episodeNumber: 20,
                      isDone: false,
                      rating: 9.9),
                ),
              );
            },
            itemCount: 100,
          ));
  }
}
