import 'package:electronic_app/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class ChoiceCard extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
      ),
      color: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                  itemBuilder: (context, index) {
                  return Container(
                      width: MediaQuery.of(context).size.width/2,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                      ) ,
                      color: greyCard,
                     child: Padding(
                       padding: const EdgeInsets.all(20.0),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: <Widget>[
                           Text(
                               'ASUS',
                           style: TextStyle(
                             color: Colors.white,
                             fontWeight: FontWeight.bold
                           ),
                           ),
                           Text(
                               'Headphones',
                             style: TextStyle(
                               color: Colors.white,
                               fontSize: 20,
                               fontWeight: FontWeight.bold
                             ),
                           ),
                           Icon(
                               Icons.headset,
                             size: 200,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: <Widget>[
                               Card(
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Text(
                                       '1200',
                                     style: TextStyle(
                                       color: Colors.black,
                                       fontSize: 20,
                                       fontWeight: FontWeight.bold
                                     ),
                                   ),
                                 ),
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(12)
                                 ),
                               ),
                               Card(
                                child: IconButton(
                                    icon: Icon(Icons.arrow_forward),
                                    onPressed: () {}
                                ),
                               )
                             ],
                           )
                         ],
                       ),
                     ),
                    ),
                  );
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
