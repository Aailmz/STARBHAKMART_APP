import 'package:flutter/material.dart';
import 'main.dart'; 
import 'cart.dart';
import 'inputs.dart';

void main() {
  runApp(MaterialApp(home: DataApp()),);
}
class DataApp extends StatefulWidget {
  const DataApp({super.key});

  @override
  State<DataApp> createState() => _DataAppState();
}

class _DataAppState extends State<DataApp> {
      int _currentIndex = 2;

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
      ),
      body: Column(
      children: [
      Row(children: [
      SizedBox(width: 20, height: 70,),
      Container(
        height: 25,
        width: 90,
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => InputsApp(),
                  transitionDuration: Duration.zero,
                ),
              );
              },
              style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 37, 33, 243), 
                        shadowColor: Colors.black,
                        elevation: 5.0, 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Center(child: Container(
                        child: Text(
                          'Add Data +',
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      )
                    ),
                  ),
                ),
              ],
              ),
              TableHead(),
                Divider(
                height: 30,
                thickness: 1,
                indent: 25,
                endIndent: 25,
                color: Colors.grey,
              ),
              FoodData(),
              Divider(
                thickness: 1,
                indent: 25,
                endIndent: 25,
                color: Colors.grey,
              ),
              DrinkData(),
              Divider(
                thickness: 1,
                indent: 25,
                endIndent: 25,
                color: Colors.grey,
              ),
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
        elevation: 90.0,
      ),
      ),
    );
  }
}
class TableHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                SizedBox(width: 30,),
                    Text(
                      'Foto',
                      style: TextStyle(fontSize: 10.0, fontFamily: 'Poppins', color: Colors.black),
                    ),
                    SizedBox(width: 60,),
                    Text(
                      'Nama Produk',
                      style: TextStyle(fontSize: 10.0, fontFamily: 'Poppins', color: Colors.black),
                    ),
                    SizedBox(width: 60,),
                    Text(
                      'Harga',
                      style: TextStyle(fontSize: 10.0, fontFamily: 'Poppins', color: Colors.black),
                    ),
                    SizedBox(width: 60,),
                    Text(
                      'Aksi',
                      style: TextStyle(fontSize: 10.0, fontFamily: 'Poppins', color: Colors.black),
                    ),
              ],
            );
  }
}

class DrinkData extends StatelessWidget {
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
                    width: 70.0,
                    height: 70.0,
                  ),
                ),
                Text('Coca Cola', style: TextStyle(fontFamily: 'Poppins', fontSize: 10),),
                SizedBox(width: 76,),
                Text('Rp7.000,00', style: TextStyle(fontFamily: 'Poppins', fontSize: 10),),
                SizedBox(width: 28,),
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

class FoodData extends StatelessWidget {
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
                    width: 70.0,
                    height: 70.0,
                  ),
                ),
                Text('Burger King Medium', style: TextStyle(fontFamily: 'Poppins', fontSize: 10),),
                SizedBox(width: 25,),
                Text('Rp50.000,00', style: TextStyle(fontFamily: 'Poppins', fontSize: 10),),
                SizedBox(width: 20,),
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
