import 'package:flutter/material.dart';

class StaffButtonCT extends StatelessWidget {
  final String nameTitle;
  final String nameContents;
  final Function press;

  final String imgRoom;

  const StaffButtonCT({
    Key? key,
    required this.nameTitle,
    required this.nameContents,
    required this.size,
    required this.imgRoom,
    required this.press,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.18,
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imgRoom,
              width: size.width,
              height: size.height,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    nameTitle,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * 0.006,
                  ),
                  Text(
                    nameContents,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
