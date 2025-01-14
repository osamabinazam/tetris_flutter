import 'package:flutter/material.dart';
import 'package:tetris/model/pieces/piece.dart';
import 'package:tetris/utils/board_utils.dart';

class PieceJ extends Piece {
  @override
  Color color = const Color.fromARGB(255, 255, 7, 7);
  @override
  List<int> currentPixels = [5, 15, 25, 24];
  @override
  List<int> defaultPixels = [5, 15, 25, 24];
  @override
  List<int> decreasedPixels = [1, 4, 7, 6];
  @override
  int rotationStatesLenght = 4;

  @override
  void rotate(int rotationState) {
    switch (rotationState) {
      case 2:
        currentPixels[0] = currentPixels[0] + boardRowLenght + 1;
        currentPixels[2] = currentPixels[2] - boardRowLenght - 1;
        currentPixels[3] = currentPixels[3] - (boardRowLenght * 2);
        break;
      case 3:
        currentPixels[0] = currentPixels[0] + boardRowLenght - 1;
        currentPixels[2] = currentPixels[2] - boardRowLenght + 1;
        currentPixels[3] = currentPixels[3] + 2;
        break;
      case 4:
        currentPixels[0] = currentPixels[0] - boardRowLenght - 1;
        currentPixels[2] = currentPixels[2] + boardRowLenght + 1;
        currentPixels[3] = currentPixels[3] + (boardRowLenght * 2);
        break;
      case 1:
        currentPixels[0] = currentPixels[0] - boardRowLenght + 1;
        currentPixels[2] = currentPixels[2] + boardRowLenght - 1;
        currentPixels[3] = currentPixels[3] - 2;
        break;
    }
  }
}
