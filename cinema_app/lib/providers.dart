import 'package:flutter/material.dart';

class BookSeat extends ChangeNotifier {
  bool isBooked = true;
  // get _isBooked => isBooked;
  bool bookSeat() {
    isBooked = !isBooked;
    notifyListeners();
    return isBooked;
  }
}

class FavoriteIcon extends ChangeNotifier {
  bool liked = false;
  void changeLiked() {
    liked = !liked;
    notifyListeners();
  }
}
