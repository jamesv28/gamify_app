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
        scrollDirection: Axis.horizontal,
        children: _gameData.map((game) {
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: _height * 0.80,
                  width: _width * 0.30,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(game.coverImage.url),
                    ),
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
