import 'package:flutter/material.dart';

class NotifyButton extends StatelessWidget {
  final String img;

  final String title;

  final String content;

  const NotifyButton({
    Key? key,
    required this.size,
    required this.img,
    required this.title,
    required this.content,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.1,
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              img,
              fit: BoxFit.cover,
              width: size.width * 0.15,
              height: size.height * 0.075,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: size.width * 0.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.006,
                ),
                Text(
                  content,
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            width: size.width * 0.2,
            child: ClipOval(
              child: Container(
                color: Colors.grey[350],
                width: size.width * 0.02,
                height: size.height * 0.05,
                child: Icon(Icons.attachment),
              ),
            ),
          )
        ],
      ),
    );
  }
}
