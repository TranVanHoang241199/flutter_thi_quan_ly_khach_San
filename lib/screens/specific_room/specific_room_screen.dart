import 'package:flutter/material.dart';

class SpecificRoomScreen extends StatefulWidget {
  const SpecificRoomScreen({Key? key}) : super(key: key);

  @override
  _SpecificRoomScreenState createState() => _SpecificRoomScreenState();
}

class _SpecificRoomScreenState extends State<SpecificRoomScreen> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child:
                GestureDetector(child: Icon(Icons.add_circle_outline_outlined)),
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
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: size.height * 0.748,
      width: size.width,
    );
  }

  Widget _head() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: size.height * 0.1,
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hotel floor',
            style: TextStyle(
                fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.008,
          ),
          Text(
            'Chọn tầng muốn xem',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
