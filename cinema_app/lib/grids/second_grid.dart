import 'package:cinema_app/providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecondGrid extends StatelessWidget {
  const SecondGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: SizedBox(
              height: 125,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("C"),
                    Text("D"),
                    Text("E"),
                    Text("F"),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 125,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 36,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 9,
                  childAspectRatio: 1,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ChangeNotifierProvider(
                    create: (_) => BookSeat(), // Create a new instance of BookSeat for each container
                    child: Consumer<BookSeat>(
                      builder: (BuildContext context, bookSeat, Widget? child) {
                        return GestureDetector(
                          onTap: () {
                            bookSeat.bookSeat();

                          },
                          child: Container(
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: bookSeat.isBooked ? Colors.pink.shade100 : Colors.red.shade600,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
