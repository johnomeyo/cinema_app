import 'package:flutter/material.dart';

class BookSeat extends ChangeNotifier {
  List<bool> generateBooleanList(int length) {
    return List<bool>.filled(length, false);
  }

  bool isSelected = true;
  bool bookSeat() {
    isSelected = !isSelected;
    notifyListeners();
    return isSelected;
  }
}

class FavoriteIcon extends ChangeNotifier {
  bool liked = false;
  void changeLiked() {
    liked = !liked;
    notifyListeners();
  }
}
