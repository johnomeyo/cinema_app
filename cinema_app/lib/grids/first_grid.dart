import 'package:flutter/material.dart';

class FirstGrid extends StatelessWidget {
  const FirstGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const SizedBox(
            height: 30,
            width: 30,
            child: Text("A"),
          ),
          const SizedBox(
            width: 50,
          ),
          SizedBox(
            height: 30,
            width: 140,
            child: GridView.builder(
              itemCount: 5,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
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
