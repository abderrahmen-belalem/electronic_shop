import 'package:flutter/material.dart';

import 'choice_card.dart';

void main() =>
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: choices.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
                'Explore Electronics',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                    icon: Icon(
                      Icons.dehaze,
                      color: Colors.black,
                    ),
                  onPressed: () {},
                ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.shopping_cart
                  ),
                  onPressed: () {}
                  ),
            ],
            bottom: TabBar(
              isScrollable: true,
              tabs: choices.map((Choice choice) {
                return Tab(
                  text: choice.title,
                  icon: Icon(choice.icon),
                );
              }).toList(),
            ),
          ),
          body: TabBarView(
            children: choices.map((Choice choice) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: ChoiceCard(choice: choice),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'LAPTOPS', icon: Icons.laptop_windows),
  const Choice(title: 'SPEAKERS', icon: Icons.speaker),
  const Choice(title: 'HEADPHONES', icon: Icons.headset),
  const Choice(title: 'PC', icon: Icons.computer),
  const Choice(title: 'Mobiles', icon: Icons.phone_android),

];

