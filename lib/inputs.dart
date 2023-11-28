import 'package:flutter/material.dart';
import 'data.dart';


class InputsApp extends StatefulWidget {
  const InputsApp({super.key});

  @override
  State<InputsApp> createState() => _InputsAppState();
}

class _InputsAppState extends State<InputsApp> {
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
              icon: const Icon(Icons.arrow_back_ios),
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Nama Produk', style: TextStyle(fontFamily: 'Poppins')),
              Input(title: 'Title 1', hintText: 'Masukkan nama produk'),
              SizedBox(height: 16.0),
              Text('Harga', style: TextStyle(fontFamily: 'Poppins')),
              Input(title: 'Title 2', hintText: 'Masukkan harga'),
              SizedBox(height: 16.0),
              Text('Kategori', style: TextStyle(fontFamily: 'Poppins')),
              ColumnInputWithIcon(title: 'Title 3', hintText: 'Makanan', icon: Icons.arrow_drop_down, backgroundColor: Colors.transparent),
              SizedBox(height: 16.0),
              Text('Image', style: TextStyle(fontFamily: 'Poppins')),
              Input(title: 'Title 4', hintText: 'Choose file'),
              SizedBox(height: 30.0),
              Submit(),
            ],
          ),
        ),
      );
  }
}

class Input extends StatelessWidget {
  final String title;
  final String hintText;

  const Input({
    Key? key,
    required this.title,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 20,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.all(8.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ColumnInputWithIcon extends StatelessWidget {
  final String title;
  final String hintText;
  final IconData icon;
  final Color backgroundColor;

  const ColumnInputWithIcon({
    Key? key,
    required this.title,
    required this.hintText,
    required this.icon,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.all(8.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Submit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 45,
        width: 400,
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
                          'Submit',
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
