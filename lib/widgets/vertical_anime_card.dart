import 'package:anime_slayer_clone/models/models.dart';
import 'package:flutter/material.dart';

class VerticalAnimeCard extends StatelessWidget {
  final Anime anime;

  const VerticalAnimeCard({Key? key, required this.anime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Container(
        child: Row(
          children: [
            Image.network(
              anime.imageUrl,
              width: 120,
              height: 240,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(anime.name,
                      style:
                          TextStyle(fontSize: 20, color: Colors.grey.shade600)),
                ),
                Text(
                  anime.isDone ? "Done" : "Episode : ${anime.episodeNumber}",
                  style: TextStyle(fontSize: 20, color: Colors.grey.shade600),
                ),
                Row(children: [
                  Text('Continous',
                      style:
                          TextStyle(fontSize: 20, color: Colors.grey.shade600)),
                  Icon(Icons.star, color: Colors.yellow, size: 40),
                  Text(
                    anime.rating.toString(),
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                  )
                ]),
              ],
            ),
          ],
        ),
        width: size.width,
        height: 240,
      ),
    );
  }
}
