import 'package:flutter/material.dart';

class SatffMenberButton extends StatelessWidget {
  final String img;

  final String titleName;

  final String content;

  const SatffMenberButton({
    Key? key,
    required this.size,
    required this.img,
    required this.titleName,
    required this.content,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.18,
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Row(
        children: [
          SizedBox(
            width: size.width * 0.03,
          ),
          ClipOval(
            child: Image.asset(
              img,
              fit: BoxFit.cover,
              width: size.width * 0.23,
              height: size.height * 0.12,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 9),
            width: size.width * 0.44,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titleName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Text(
                  content,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Container(
            width: size.width * 0.197,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone,
                  size: 30,
                ),
                SizedBox(
                  height: size.height * 0.011,
                ),
                Icon(
                  Icons.message,
                  size: 30,
                ),
                SizedBox(
                  height: size.height * 0.011,
                ),
                Icon(
                  Icons.access_alarms,
                  size: 30,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
