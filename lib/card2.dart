import 'package:flutter/material.dart';
import 'author_card.dart';
import 'gpsdomundo_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      //1
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://thumbs.gfycat.com/RepentantRapidElk-max-1mb.gif'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(children: [
          const AuthorCard(
            authorName: 'Adam simon',
            title: 'Software Engineer',
            imageProvider: NetworkImage(
                'https://i1.sndcdn.com/artworks-000157492463-x1olqe-t500x500.jpg'),
          ),
          Expanded(
            //2
            child: Stack(
              children: [
                //3
                Positioned(
                  bottom: 16,
                  right: 16,
                  child: Text(
                    'Lagoinha',
                    style: GpsdoMundoTheme.darkTextTheme.headline1,
                  ),
                ),
                //4
                Positioned(
                  bottom: 70,
                  left: 16,
                  child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Canadá',
                        style: GpsdoMundoTheme.darkTextTheme.headline1,
                      )),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
