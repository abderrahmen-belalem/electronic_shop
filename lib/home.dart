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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 50, top: 25),
              child: Text(
                  'Explore \nElectronics',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ChoiceCard(),
          ),
        ],
      ),
    );
  }
}
