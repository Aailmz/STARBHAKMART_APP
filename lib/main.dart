import 'package:flutter/material.dart';
import 'inputs.dart'; 
import 'cart.dart';
import 'data.dart';

void main() {
  runApp(MaterialApp(home: MainApp()),);
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
    int _currentIndex = 0;

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
    final double appBarHeight = 250.0;
    Color containerColor = Colors.white;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: AppBar(
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
          title: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [],
            ),
          ),

          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Row(
            children: [
              MyInkWellContainer(),
            ],
          ),
          Row(
            children: [
              SizedBox(height: 20,)
            ],
          ),
          Text('All Food', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Poppins'))
            ],
          ),
        ),
      ),
      body:
      SingleChildScrollView(
        child:
        Column(
        children: [
          Row(
            children: [
              SizedBox(height: 20,)
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Item()
              ),
              SizedBox(height: 10, width: 20),
              Expanded(
                child: drinkItem()
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(height: 20,)
            ],
          ),
          Row(
            children: [
              Expanded(
                child: drinkItem()
              ),
              SizedBox(height: 10, width: 20),
              Expanded(
                child: Item()
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(height: 20,)
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Item()
              ),
              SizedBox(height: 10, width: 20),
              Expanded(
                child: drinkItem()
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(height: 20,)
            ],
          ),
        ],
      ),
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
        elevation: 90.0,
      ),
      ),
    );
  }
}

class MyInkWellContainer extends StatefulWidget {
  @override
  _MyInkWellContainerState createState() => _MyInkWellContainerState();
}

class _MyInkWellContainerState extends State<MyInkWellContainer> {
  Color containerColor1 = Colors.white;
  Color containerColor2 = Colors.white;
  Color containerColor3 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyInkWell(
          imagePath: 'images/All.png',
          containerColor: containerColor1,
          name: 'All',
          onTap: () {
            print('MANTAP');
            setState(() {
              containerColor1 = Color.fromARGB(255, 77, 65, 252);
              containerColor2 = Colors.white;
              containerColor3 = Colors.white;
            });
          },
        ),
        SizedBox(width: 35),
        MyInkWell(
          imagePath: 'images/Burger.png',
          containerColor: containerColor2,
          name: 'Makanan',
          onTap: () {
            print('MANTAP');
            setState(() {
              containerColor1 = Colors.white;
              containerColor2 = Color.fromARGB(255, 77, 65, 252);
              containerColor3 = Colors.white;
            });
          },
        ),
        SizedBox(width: 35),
        MyInkWell(
          imagePath: 'images/Cola.png',
          containerColor: containerColor3,
          name: 'Minuman',
          onTap: () {
            print('MANTAP');
            setState(() {
              containerColor1 = Colors.white;
              containerColor2 = Colors.white;
              containerColor3 = Color.fromARGB(255, 77, 65, 252);
            });
          },
        ),
      ],
    ),
    );
  }
}


class MyInkWell extends StatefulWidget {
  final String imagePath;
  final String name;
  final Color containerColor;
  final VoidCallback onTap;

  MyInkWell({required this.containerColor, required this.onTap, required this.imagePath, required this.name});

  @override
  _MyInkWellState createState() => _MyInkWellState();
}

class _MyInkWellState extends State<MyInkWell> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Column(
        children: [
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: widget.containerColor, 
              borderRadius: BorderRadius.circular(30.0), 
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: Image(
                image: AssetImage(widget.imagePath), 
                height: 70,
                width: 70,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10), 
          Text(
            widget.name,
            style: TextStyle(
              color: Colors.black, fontFamily: 'Poppins'
            ),
          ),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 150,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Image.asset('images/Burger.png', height: 60, width: 100),
          ),
          Positioned(
            bottom: 20,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Burger King Medium',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Poppins', fontSize: 12),
                ),
                Text(
                  'Rp50.000,00',
                  style: TextStyle(color: Colors.grey, fontFamily: 'Poppins', fontSize: 11),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Icon(
              Icons.add_circle,
              color: Colors.green,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

class drinkItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 150,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 0,
            right: 0,
            child: Image.asset('images/Cola.png', height: 60, width: 100),
          ),
          Positioned(
            bottom: 20,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Coca Cola',
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: 'Poppins', fontSize: 12),
                ),
                Text(
                  'Rp7.000,00',
                  style: TextStyle(color: Colors.grey, fontFamily: 'Poppins', fontSize: 11),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Icon(
              Icons.add_circle,
              color: Colors.green,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
