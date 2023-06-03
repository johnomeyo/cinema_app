import 'package:flutter/material.dart';

class ThirdGrid extends StatelessWidget {
  const ThirdGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          const SizedBox(
            height: 30,
            width: 30,
            child: Text("B"),),
            const SizedBox(
              width: 20,
            ),
          SizedBox(
            height: 30,
            width: 200,
            child: GridView.builder(
              itemCount: 7,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                  childAspectRatio: 1,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.pink.shade100,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
