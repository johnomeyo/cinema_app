import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers.dart';

class Favorites extends StatelessWidget {
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<FavoriteIcon>(
      builder: (BuildContext context, value, Widget? child) => IconButton(
          onPressed: () {
            value.changeLiked();
          },
          icon: value.liked
              ? const Icon(Icons.favorite)
              : const Icon(Icons.visibility_off)),
    ));
  }
}
