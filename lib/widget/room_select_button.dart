import 'package:flutter/material.dart';

class SelectButton extends StatelessWidget {
  final String nameTitle;
  final String nameContents;
  final GestureTapCallback? ontapButton;

  const SelectButton({
    Key? key,
    required this.nameTitle,
    required this.nameContents,
    required this.size,
    this.ontapButton,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => ontapButton,
      child: Container(
        height: size.height * 0.18,
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.06,
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
      ),
    );
  }
}
