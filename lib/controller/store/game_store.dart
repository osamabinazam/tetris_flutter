import 'package:flutter/material.dart';
import 'package:tetris/model/pieces/piece.dart';
import 'package:tetris/utils/board_utils.dart';

class GameStore {
  static final GameStore _gameStore = GameStore._internal();

  factory GameStore() {
    return _gameStore;
  }

  bool isGameOver = false;
  bool isPaused = false;
  bool stopButtonDown = false;
  int score = 0;
  int bestScore = 0; // Add bestScore field
  int currentPieceRotateState = 1;
  late Piece currentPiece;
  late Piece nextPiece;
  List<List<Color?>> occupiedBoardPixels = List.generate(
    boardColumnLenght,
    (i) => List.generate(boardRowLenght, (j) => null),
  );

  void _resetOccupiedBoardPixels() {
    occupiedBoardPixels = List.generate(
      boardColumnLenght,
      (i) => List.generate(boardRowLenght, (j) => null),
    );
  }

  void resetData() {
    if (score > bestScore) {
      bestScore = score; // Update bestScore if the current score is higher
    }
    _resetOccupiedBoardPixels();
    score = 0;
    isGameOver = false;
    isPaused = false;
    stopButtonDown = false;
    currentPieceRotateState = 1;
    // Add any other reset logic if necessary
  }

  GameStore._internal();
}
