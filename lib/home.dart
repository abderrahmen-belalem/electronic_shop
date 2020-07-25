import 'package:flutter/material.dart';
import 'choice_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
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
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Text('Explore \nElectronics'),
          ),
          Expanded(
            flex: 3,
            child: ChoiceCard(),
          ),
        ],
      ),
    );
  }
}
