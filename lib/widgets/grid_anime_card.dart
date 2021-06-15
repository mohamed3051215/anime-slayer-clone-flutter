import 'package:anime_slayer_clone/models/anime.dart';
import 'package:flutter/material.dart';

class AnimeCard extends StatelessWidget {
  final Anime anime;

  const AnimeCard({Key? key, required this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 450,
        width: 170,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                anime.imageUrl,
                fit: BoxFit.cover,
                width: 170,
                height: 230,
              ),
            ),
            Text(anime.name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 20,
                )),
            Row(children: [
              Text('Continuous', style: TextStyle(fontSize: 11)),
              Icon(Icons.star, color: Colors.yellow, size: 20),
              Text(anime.rating.toString())
            ]),
          ],
        ));
  }
}
