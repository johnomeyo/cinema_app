import 'package:flutter/material.dart';

import '../action.dart';
import '../components/components.dart';
import '../tabs/comedy.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                    text: TextSpan(
                        text: "Welcome",
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.shade500),
                        children: const [
                      TextSpan(
                          text: '  John',
                          style: TextStyle(color: Colors.red, fontSize: 20)),
                    ])),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CarouselImageSlider(),
              ),
              const SizedBox(
                height: 20,
              ),
              TabBar(
                  labelColor: Colors.red,
                  indicatorColor: Colors.red,
                  unselectedLabelColor: Colors.grey.shade600,
                  tabs: const [
                    Text("Action"),
                    Text("Comedy"),
                    Text("Thriller"),
                    Text("Romance"),
                  ]),
              Expanded(
                child: TabBarView(children: [
                  const ActionsTab(),
                  ComedyTab(),
                  const ActionsTab(),
                  const ActionsTab(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
