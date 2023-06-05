import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers.dart';

class Tickets extends StatelessWidget {
  const Tickets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Tickets"),
      ),
    );
  }
}
