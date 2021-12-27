import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_quan_ly_phong_khach_san/screens/signin/signin_screen.dart';

import '../../constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        _background(),
        _bodyContent(),
      ],
    ));
  }

  Widget _bodyContent() {
    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Container(
            height: size.height * 0.7,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.air_outlined, size: 115, color: Colors.white),
                Text(
                  'Summer',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: size.height * 0.3,
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.065,
                ),
                Text(
                  '* Chú ý : Phần mền quản lý phòng chỉ dành cho nhân sự khách sạn, phần mền chỉ lưu hành nội bộ.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignInScreen())),
                    child: Container(
                      height: size.height * 0.065,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ship',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.navigate_next,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _background() {
    return Image.asset(
      "assets/images/bg_ks.jpg",
      fit: BoxFit.cover,
      width: size.width,
      height: size.height,
    );
  }
}
