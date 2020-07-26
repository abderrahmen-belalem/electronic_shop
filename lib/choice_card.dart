import 'package:electronic_app/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ChoiceCard extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(23, 40, 0, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 3),
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 8);
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Material(
                        borderRadius: BorderRadius.circular(30),
                        elevation: 1,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                            child: Text(
                                'Laptop',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                        ),
                      );
                    }
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                child: ListView.separated(
                  separatorBuilder: (context, index){
                    return SizedBox(width: 40);
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                    itemBuilder: (context, index) {
                    return Container(
                        width: MediaQuery.of(context).size.width/2.2,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ) ,
                        color: greyCard,
                       child: Padding(
                         padding: const EdgeInsets.all(18.0),
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
                             SizedBox(height: 5),
                             Text(
                                 'Laptop',
                               style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold
                               ),
                             ),
                             SizedBox(height: 15),
                             Image.asset('assets/laptop.png'),
                             Expanded(child: SizedBox()),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: <Widget>[
                                 Card(
                                   child: Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text(
                                         '350\$',
                                       style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 19,
                                         fontWeight: FontWeight.bold
                                       ),
                                     ),
                                   ),
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(12)
                                   ),
                                 ),
                                 ClipRRect(
                                   borderRadius: BorderRadius.circular(8),
                                   child: Container(
                                     color: Colors.white,
                                     child: Padding(
                                       padding: const EdgeInsets.all(5.0),
                                       child: Icon(
                                           Icons.arrow_forward,
                                         size: 18,
                                       ),
                                     ),
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
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                        'Best Selling',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Container(
                        width: MediaQuery.of(context).size.width/1.2,
                        color: Colors.black,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 15, 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Container(
                              width: 110,
                              height: 130,
                              color: greyCard,
                              child: Image.asset(
                                  'assets/laptop.png',
                                width: 100,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(18, 2, 0, 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                        'ASUS',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                        'Laptop',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                      ),
                                    ),
                                    Expanded(child: SizedBox()),
                                    Text(
                                        '350\$',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(9),
                                  child: Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Icon(
                                          Icons.arrow_forward,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
