import 'package:flutter/material.dart';
import 'package:flutter_quan_ly_phong_khach_san/screens/specific_room/specific_room_screen.dart';
import 'package:flutter_quan_ly_phong_khach_san/widget/room_select_button.dart';

class RomScreen extends StatefulWidget {
  const RomScreen({Key? key}) : super(key: key);

  @override
  _RomScreenState createState() => _RomScreenState();
}

class _RomScreenState extends State<RomScreen> {
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
          children: [
            SizedBox(
              height: size.height * 0.04,
            ),
            SelectButton(
              size: size,
              ontapButton: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SpecificRoomScreen())),
              nameTitle: 'Tầng 1',
              nameContents: 'Tuy cập vào tầng 1.',
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SelectButton(
              size: size,
              ontapButton: () => null,
              nameTitle: 'Tầng 2',
              nameContents: 'Tuy cập vào tầng 1.',
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SelectButton(
              size: size,
              ontapButton: () => null,
              nameTitle: 'Tầng 3',
              nameContents: 'Tuy cập vào tầng 1.',
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SelectButton(
              size: size,
              ontapButton: () => null,
              nameTitle: 'Tầng 4',
              nameContents: 'Tuy cập vào tầng 1.',
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SelectButton(
              size: size,
              ontapButton: () => null,
              nameTitle: 'Tầng 5',
              nameContents: 'Tuy cập vào tầng 1.',
            )
          ],
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
