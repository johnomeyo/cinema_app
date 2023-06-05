import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers.dart';

class Tickets extends StatelessWidget {
  const Tickets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        // child: Consumer<BookSeat>(
        //   builder: (BuildContext context, bookSeat, Widget? child) {
        //     return GestureDetector(
        //       onTap: () {
        //         bookSeat.bookSeat(3);
        //       },
        //       child: Container(
        //         height: 40,
        //         width: 40,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(5),
        //           color: bookSeat.isBooked
        //               ? Colors.pink.shade100
        //               : Colors.red.shade600,
        //         ),
        //       ),
        //     );
        //   },
        // ),
        child: Text("Tickets"),
      ),
    );
  }
}
