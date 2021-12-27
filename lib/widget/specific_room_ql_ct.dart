import 'package:flutter/material.dart';

class RoomQL extends StatelessWidget {
  final int index;
  final Color status;

  const RoomQL({
    Key? key,
    required this.index,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(top: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment(0.77, 0),
            child: Container(
              decoration: BoxDecoration(
                  color: status, borderRadius: BorderRadius.circular(20)),
              height: 28,
              width: 28,
            ),
          ),
          Container(
            height: size.height * 0.16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.air_outlined, size: 60, color: Colors.white),
                Text(
                  'Summer',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )
              ],
            ),
          ),
          Center(
              child: Text(
            'Phòng ' + '$index',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )),
        ],
      ),
    );
  }
}
