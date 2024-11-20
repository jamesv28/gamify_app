import 'package:flutter/material.dart';
import '../data.dart';

class ScrollableGamesWidget extends StatelessWidget {
  final double _height;
  final double _width;
  final bool _displayTitles;

  final List<Game> _gameData;

  ScrollableGamesWidget(
      this._height, this._width, this._displayTitles, this._gameData);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: _gameData.map((game) {
          return Container(
            height: _height,
            width: _width * 0.30,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(right: _width * 0.04),
                  height: _height * 0.80,
                  width: _width * 0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(game.coverImage.url),
                    ),
                  ),
                ),
                Text(
                  game.title,
                  maxLines: 2,
                  style:
                      TextStyle(color: Colors.white, fontSize: _height * 0.05),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
