import 'package:electronic_app/models/product.dart';
import 'package:flutter/material.dart';
import 'const.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = [
    'Laptops',
    'Speakers',
    'Headphones',
    'PC\'s',
    'Mobiles'
  ];

  List<Product> laptops = [
    Product(
        price: 400,
        name: 'laptop-1',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'Laptops'),
    Product(
        price: 200,
        name: 'laptop-2',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'Laptops'),
    Product(
        price: 400,
        name: 'laptop-3',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'Laptops'),
  ];

  List<Product> speakers = [
    Product(
        price: 400,
        name: 'speaker-1',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'Speakers'),
    Product(
        price: 200,
        name: 'speaker-2',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'Speakers'),
    Product(
        price: 400,
        name: 'speaker-3',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'Speakers'),
  ];

  List<Product> headphones = [
    Product(
        price: 400,
        name: 'headphone-1',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'Headphones'),
    Product(
        price: 200,
        name: 'headphone-2',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'Headphones'),
    Product(
        price: 400,
        name: 'headphone-3',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'Headphones'),
  ];

  List<Product> pcs = [
    Product(
        price: 400,
        name: 'pc-1',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'PC\'s'),
    Product(
        price: 200,
        name: 'pc-2',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'PC\'s'),
    Product(
        price: 400,
        name: 'pc-3',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'PC\'s'),
  ];

  List<Product> mobiles = [
    Product(
        price: 400,
        name: 'mobiles-1',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'Mobiles'),
    Product(
        price: 200,
        name: 'mobiles-2',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'Mobiles'),
    Product(
        price: 400,
        name: 'mobiles-3',
        brand: 'asus',
        descreption: 'description',
        image: 'laptop.png',
        category: 'Mobiles'),
  ];

  String category = 'Laptops';
  List<Product> temp;

  @override
  void initState() {
    super.initState();
    temp = laptops;
  }

  changeCategory(String cat) {
    category = cat;
    switch (cat) {
      case 'Laptops':
        temp = laptops;
        break;
      case 'Speakers':
        temp = speakers;
        break;
      case 'Headphones':
        temp = headphones;
        break;
      case 'PC\'s':
        temp = pcs;
        break;
      case 'Mobiles':
        temp = mobiles;
    }
  }
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: Text('7'),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Builder(
          builder: (BuildContext context) {
            return  Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(
                    Icons.dehaze,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              ),
            );
          },
        ),

        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Column(
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
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(13, 30, 0, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 35, top: 3, bottom: 0),
                              child: ListView.separated(
                                  separatorBuilder: (context, index) {
                                    return SizedBox(width: 8);
                                  },
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.only(bottom: 1),
                                      child: Material(
                                        elevation: 1,
                                        color:  _selectedIndex == index ? Colors.black : Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _selectedIndex = index;
                                              changeCategory(categories[index]);
                                            });
                                          },
                                          child: Container(
                                              child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8, horizontal: 12),
                                            child: Text(
                                              categories[index],
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                                color: _selectedIndex == index ? Colors.white : Colors.black,
                                              ),
                                            ),
                                          )),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                          SizedBox(height: 5),
                          Expanded(
                            flex:10,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(45, 20, 0, 0),
                              child: ListView.separated(
                                  separatorBuilder: (context, index) {
                                    return SizedBox(width: 30);
                                  },
                                  scrollDirection: Axis.horizontal,
                                  itemCount: temp.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: MediaQuery.of(context).size.width /
                                          2.2,
                                      child: Card(
                                        elevation: 1.5,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        color: greyCard,
                                        child: Padding(
                                          padding: const EdgeInsets.all(18.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                temp[index].brand,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                temp[index].name,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 32),
                                              Image.asset(
                                                  'assets/${temp[index].image}'),
                                              Expanded(child: SizedBox()),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Card(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Text(
                                                        '${temp[index].price}\$',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 19,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                  ),
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                    child: Container(
                                                      color: Colors.white,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(5.0),
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
                                  }),
                            ),
                          ),
                          SizedBox(height: 20),
                          Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 22, top: 20),
                                  child: Text(
                                    'Best Selling',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Expanded(
                                  child: Material(
                                    borderRadius: BorderRadius.circular(30),
                                    elevation: 1.5,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.17,
                                        color: Colors.black,
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              14, 14, 20, 14),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: <Widget>[
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(30),
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
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        18, 2, 0, 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      'ASUS',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                    SizedBox(height: 5),
                                                    Text(
                                                      'Laptop',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                    Expanded(child: SizedBox()),
                                                    Text(
                                                      '350\$',
                                                      style: TextStyle(
                                                          fontSize: 17,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(child: SizedBox()),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 10),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(9),
                                                  child: Container(
                                                    color: Colors.white,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
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
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: Material(
              borderRadius: BorderRadius.circular(25),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),
            top: 110,
            right: 40,
          )
        ],
      ),
    );
  }
}
