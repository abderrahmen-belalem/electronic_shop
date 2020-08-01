import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import '../const.dart';



class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
              color: Colors.white,
        )
            , onPressed: () {}
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white,
              onPressed: () {}
              )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Center(
              child: Image.asset(
                  'assets/laptop.png',
                height: 330,
                width: 330,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(55),
                  topRight: Radius.circular(55)
                ),
              ),
              color: alternativeColor,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'laptop',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                          Expanded(child: SizedBox()),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 5),
                            child: Text(
                              '300\$',
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        '''Laptop désigne un ordinateur portable, c\'est-à-dire un ordinateur avec un clavier et un écran rabattable que l\'on peut transporter avec soi''',
                          style: TextStyle(
                          wordSpacing: 3,
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Card(
                      elevation: 2,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)
                      ),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              SizedBox(width: 45),
                              Icon(
                                  Icons.shopping_cart,
                                color: alternativeColor,
                              ),
                              SizedBox(width: 10),
                              Text(
                                  'Add To Cart',
                                  style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: alternativeColor,
                                  fontSize: 20
                                ),
                              ),
                              SizedBox(width: 45)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

