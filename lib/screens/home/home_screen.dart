import 'package:flutter/material.dart';

import 'home_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(right: 17),
          child: Text('Trang Chủ'),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        children: [
          _logo(),
          Container(
            height: size.height * 0.547,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Giới Thiệu',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _logo() {
    return Container(
      height: size.height * 0.3,
      width: size.width,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/bg_ks1.jpg",
            fit: BoxFit.cover,
            width: size.width,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.air_outlined, size: 115, color: Colors.white),
                  Text(
                    'Summer',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
