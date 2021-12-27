import 'package:flutter/material.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({Key? key}) : super(key: key);

  @override
  _NoteScreenState createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
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
      child: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
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
            'Ghi chú',
            style: TextStyle(
                fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.008,
          ),
          Text(
            'Ghi chú công việc cần làm ở đây',
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
