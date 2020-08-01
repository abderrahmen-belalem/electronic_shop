import 'dart:math';
import 'package:electronic_app/models/product.dart';
import 'package:flutter/cupertino.dart';
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
        price: 1399,
        name: 'Microsoft Surface Laptop 3 Twister',
        brand: 'Microsoft',
        descreption: 'description',
        image: 'laptop.png',
        category: 'Laptops'),
    Product(
        price: 1499,
        name: 'Microsoft Surface Laptop 3',
        brand: 'Microsoft',
        descreption: 'description',
        image: 'laptop2.png',
        category: 'Laptops'),
    Product(
        price: 1069,
        name: 'Microsoft Surface Pro 7',
        brand: 'Microsft',
        descreption: 'description',
        image: 'laptop3.png',
        category: 'Laptops'),
  ];

  List<Product> speakers = [
    Product(
        price: 67,
        name: 'Logitech Multimedia Speakers White Z200',
        brand: 'Logitech',
        descreption: 'description',
        image: 'speaker.png',
        category: 'Speakers'),
    Product(
        price: 739,
        name: 'Audioengine 5+ Powered Bookshelf Speakers',
        brand: 'Audioengine',
        descreption: 'description',
        image: 'speaker2.png',
        category: 'Speakers'),
    Product(
        price: 399,
        name: 'Kanto Living YU6 2-Way Powered Bookshelf',
        brand: 'Kanto Living',
        descreption: 'description',
        image: 'speaker3.png',
        category: 'Speakers'),
  ];

  List<Product> headphones = [
    Product(
        price: 47,
        name: 'Xiaomi Mi Bluetooth Headphones Foldable Headset',
        brand: 'Xiaomi',
        descreption: 'description',
        image: 'headphone.png',
        category: 'Headphones'),
    Product(
        price: 1799,
        name: 'Mi Super Bass Wireless Headphones',
        brand: 'Mi',
        descreption: 'description',
        image: 'headphone1.png',
        category: 'Headphones'),
    Product(
        price: 88,
        name: 'Casque Audio Sans Fil aWear',
        brand: 'KREAFUNK',
        descreption: 'description',
        image: 'headphone2.png',
        category: 'Headphones'),
  ];

  List<Product> pcs = [
    Product(
        price: 292,
        name: 'HP Elite',
        brand: 'HP',
        descreption: 'description',
        image: 'pc.png',
        category: 'PC\'s'),
    Product(
        price: 305,
        name: 'Dell Optiplex 790',
        brand: 'Dell',
        descreption: 'description',
        image: 'pc1.png',
        category: 'PC\'s'),
    Product(
        price: 299,
        name: 'Dell Optiplex 7010',
        brand: 'Dell',
        descreption: 'description',
        image: 'pc2.png',
        category: 'PC\'s'),
  ];

  List<Product> mobiles = [
    Product(
        price: 1249,
        name: 'Galaxy S20 Ultra',
        brand: 'Samsung',
        descreption: 'description',
        image: 'mobile.png',
        category: 'Mobiles'),
    Product(
        price: 1549,
        name: 'Iphone 11 Pro Max',
        brand: 'Apple',
        descreption: 'description',
        image: 'mobile1.png',
        category: 'Mobiles'),
    Product(
        price: 2100,
        name: 'Asus Rog Phone 3',
        brand: 'Asus',
        descreption: 'description',
        image: 'mobile2.png',
        category: 'Mobiles'),
  ];

  String category = 'Laptops';
  List<Product> temp;
  Product product;

  @override
  void initState() {
    super.initState();
    temp = laptops;
    product = temp[Random().nextInt(temp.length)];
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
            return Padding(
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
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
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
                              padding: const EdgeInsets.only(
                                  left: 35, top: 3, bottom: 0),
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
                                        color: _selectedIndex == index
                                            ? Color(0XFF74647C)
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _selectedIndex = index;
                                              changeCategory(categories[index]);
                                              product = temp[Random()
                                                  .nextInt(temp.length)];
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
                                                color: _selectedIndex == index
                                                    ? Colors.white
                                                    : accentColor,
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
                            flex: 10,
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
                                        color: primeryColor,
                                        child: Padding(
                                          padding: const EdgeInsets.all(18.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                temp[index].brand,
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 5),
                                              Text(
                                                temp[index].name,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                              ),
                                              SizedBox(height: 32),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20),
                                                child: Image.asset(
                                                  'assets/${temp[index].image}',
                                                  height: 100,
                                                ),
                                              ),
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
                                                    child: GestureDetector(
                                                      onTap: () {},
                                                      child: Container(
                                                        color: Colors.white,
                                                        child: Material(
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(5.0),
                                                            child: Icon(
                                                               Icons.arrow_forward,
                                                               size: 18,
                                                             ),
                                                          ),
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
                                        fontSize: 20,
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
                                        color: seconderyColor,
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
                                                  color: primeryColor,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Image.asset(
                                                      'assets/${product.image}',
                                                      width: 100,
                                                      fit: BoxFit.fitWidth,
                                                    ),
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
                                                      product.brand,
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                    SizedBox(height: 5),
                                                    SizedBox(
                                                      width: 150,
                                                      child: Text(
                                                        product.name,
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ),
                                                    Expanded(child: SizedBox()),
                                                    Text(
                                                      '${product.price}\$',
                                                      style: TextStyle(
                                                          fontSize: 15,
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
