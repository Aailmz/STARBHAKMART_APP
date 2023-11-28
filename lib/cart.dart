import 'package:flutter/material.dart';
import 'inputs.dart'; 
import 'splash.dart';
import 'data.dart';

class CartApp extends StatefulWidget {
  const CartApp({super.key});

  @override
  State<CartApp> createState() => _CartAppState();
}

class _CartAppState extends State<CartApp> {
      int _currentIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => MainApp(),
            transitionDuration: Duration.zero,
          ),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => CartApp(),
            transitionDuration: Duration.zero,
          ),
        );
        break;
      case 2:
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => DataApp(),
            transitionDuration: Duration.zero,
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 250, 250, 250),
        elevation: 0.0,
        leading: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 24.0,
            child: IconButton(
              icon: const Icon(Icons.menu),
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) => DataApp(),
                    transitionDuration: Duration.zero,
                  ),
                );
              },
            ),
          ),
        ),
        title: Row(
          children: [
            SizedBox(width: 105,),
            Text(
              "Cart",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
                fontFamily: 'Poppins'
              ),
            ),
            Container(
              width: 48.0, // Adjust the width as needed
            ),
          ],
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 24.0,
              child: IconButton(
                icon: const Icon(Icons.person_2_outlined),
                color: Colors.black,
                onPressed: () {
                  // Add your onPressed logic here
                },
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          CartItem(),
          DrinkCartItem(),
          SizedBox(height: 125,),
          TotalCartItem(),
          Checkout(),
        ],
      ),

      bottomNavigationBar: 
      Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 40,
              spreadRadius: 20,
              offset: Offset(0, 0),
            ),
          ],
        ),
      child:
      BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: _onItemTapped,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_chart),
            label: 'Data',
          ),
        ],
      ),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16.0),
                  child: Image.asset(
                    'images/Burger.png', 
                    width: 90.0,
                    height: 90.0,
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Burger King Medium',
                      style: TextStyle(fontSize: 15.0, fontFamily: 'Poppins'),
                    ),
                    SizedBox(height: 6,),
                    Text(
                      'Rp50.000,00',
                      style: TextStyle(fontSize: 12.0, fontFamily: 'Poppins', color: Colors.grey),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(
                          Icons.do_disturb_on_outlined,
                          size: 20.0,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          '2',
                          style: TextStyle(fontSize: 13.0, fontFamily: 'Poppins'),
                        ),
                        SizedBox(width: 10,),
                        Icon(
                          Icons.add_circle_outline,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 30,),
                Container(
                  margin: EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.delete,
                    size: 30.0,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          );
  }
}

class DrinkCartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 16.0),
                  child: Image.asset(
                    'images/Cola.png', 
                    width: 90.0,
                    height: 90.0,
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Coca Cola',
                      style: TextStyle(fontSize: 15.0, fontFamily: 'Poppins'),
                    ),
                    SizedBox(height: 6,),
                    Text(
                      'Rp7.000,00',
                      style: TextStyle(fontSize: 12.0, fontFamily: 'Poppins', color: Colors.grey),
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(
                          Icons.do_disturb_on_outlined,
                          size: 20.0,
                          color: Colors.black,
                        ),
                        SizedBox(width: 10,),
                        Text(
                          '1',
                          style: TextStyle(fontSize: 13.0, fontFamily: 'Poppins'),
                        ),
                        SizedBox(width: 10,),
                        Icon(
                          Icons.add_circle_outline,
                          size: 20.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 106,),
                Container(
                  margin: EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.delete,
                    size: 30.0,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          );
  }
}

class TotalCartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ringkasan Belanja',
                      style: TextStyle(fontSize: 14.0, fontFamily: 'Poppins'),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'PPN 11%',
                      style: TextStyle(fontSize: 13.0, fontFamily: 'Poppins', color: Colors.grey),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Total Belanja',
                      style: TextStyle(fontSize: 13.0, fontFamily: 'Poppins', color: Colors.grey),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      '---',
                      style: TextStyle(fontSize: 13.0, fontFamily: 'Poppins', color: Colors.grey),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Total Pembayaran',
                      style: TextStyle(fontSize: 13.0, fontFamily: 'Poppins', color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(width: 126,),
                Column(
                  children: [
                    Container(),
                    SizedBox(height: 27),
                    Text(
                      'Rp11.770,00',
                      style: TextStyle(fontSize: 13.0, fontFamily: 'Poppins', color: Colors.grey),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'Rp107.000,00',
                      style: TextStyle(fontSize: 13.0, fontFamily: 'Poppins', color: Colors.grey),
                    ),
                    SizedBox(height: 9,),
                    Text(
                      '',
                    ),
                    SizedBox(height: 9,),
                    Text(
                      'Rp118.770,00',
                      style: TextStyle(fontSize: 13.0, fontFamily: 'Poppins', color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          );  
  }
}
class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 45,
        width: 300,
        child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 37, 33, 243), 
                        shadowColor: Colors.black,
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), 
                        ),
                      ),
                      child: Center(child: Container(
                        width: 100,
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      )
                    ),
                  ),
                ),
      );
  }
}
