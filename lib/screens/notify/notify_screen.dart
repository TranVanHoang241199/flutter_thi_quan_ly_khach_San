import 'package:flutter/material.dart';

//Thông báo
class NotifyScreen extends StatefulWidget {
  const NotifyScreen({Key? key}) : super(key: key);

  @override
  _NotifyScreenState createState() => _NotifyScreenState();
}

class _NotifyScreenState extends State<NotifyScreen> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(child: Icon(Icons.restart_alt)),
          )
        ],
      ),
      body: Column(
        children: [_head(), _content()],
      ),
    );
  }

  Widget _content() {
    return Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        height: size.height * 0.65,
        width: size.width,
        child: ListView(
          children: [
            Container(),
            SizedBox(
              height: size.height * 0.02,
            ),
          ],
        ));
  }

  Widget _head() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: size.height * 0.17,
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.002,
          ),
          Text(
            'Thông Báo',
            style: TextStyle(
                fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.008,
          ),
          Text(
            'Tất cả thông báo ở đây.',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            height: size.height * 0.07,
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: 17, color: Colors.black),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
        ],
      ),
    );
  }
}
