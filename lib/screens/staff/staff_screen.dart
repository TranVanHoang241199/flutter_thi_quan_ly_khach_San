import 'package:flutter/material.dart';
import 'package:flutter_quan_ly_phong_khach_san/screens/staff/staff_menber/satff_menber_screen.dart';
import 'package:flutter_quan_ly_phong_khach_san/widget/staff_button_ct.dart';

class StaffScreen extends StatefulWidget {
  const StaffScreen({Key? key}) : super(key: key);

  @override
  _StaffScreenState createState() => _StaffScreenState();
}

class _StaffScreenState extends State<StaffScreen> {
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
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StaffMenberScreen())),
              child: StaffButtonCT(
                imgRoom: "assets/images/letan_staff.jpg",
                nameTitle: 'Nhân Viên Lễ tân',
                nameContents: 'Hỗ trợ ',
                size: size,
                press: () => null,
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StaffMenberScreen())),
              child: StaffButtonCT(
                imgRoom: "assets/images/kythuat_staff.jpg",
                nameTitle: 'Nhân Viên Kỹ thuật',
                nameContents: 'Hỗ trợ ',
                size: size,
                press: () => null,
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StaffMenberScreen())),
              child: StaffButtonCT(
                imgRoom: "assets/images/ben_staff.jpg",
                nameTitle: 'Nhân Viên Bếp',
                nameContents: 'Hỗ trợ ',
                size: size,
                press: () => null,
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StaffMenberScreen())),
              child: StaffButtonCT(
                imgRoom: "assets/images/vesinh_staff.jpg",
                nameTitle: 'Nhân Viên Vệ Sinh',
                nameContents: 'Hỗ trợ ',
                size: size,
                press: () => null,
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
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
            'Nhân Viên',
            style: TextStyle(
                fontSize: 21, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.008,
          ),
          Text(
            'Chọn Nhân Viên cần hỗ trơ',
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
