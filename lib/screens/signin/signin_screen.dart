import 'package:flutter/material.dart';
import 'package:flutter_quan_ly_phong_khach_san/screens/home/home_screen.dart';

import '../../constants.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late Size size;
  var txtUser = TextEditingController();
  var TxtPass = TextEditingController();
  var key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/bg_ks1.jpg",
            width: size.width,
            height: size.height,
            fit: BoxFit.cover,
          ),
          Container(
            height: size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.air_outlined,
                            size: 115, color: Colors.white),
                        Text(
                          'Summer',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  _formlogin()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _formlogin() {
    return Container(
      height: size.height * 0.6,
      decoration: BoxDecoration(
          color: Colors.black45,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.09,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: size.height * 0.065,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                controller: txtUser,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "vui lòng nhập tên đăng nhập.";
                  else
                    return null;
                },
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                    hintText: 'Enter password',
                    hintStyle: TextStyle(fontSize: 15, color: Colors.white),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: size.height * 0.065,
              width: size.width,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                controller: TxtPass,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return "vui lòng nhập tên đăng nhập.";
                  else
                    return null;
                },
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock_open,
                      color: Colors.white,
                    ),
                    hintText: 'Enter password',
                    labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                    hintStyle: TextStyle(fontSize: 15, color: Colors.white),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none),
              ),
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen())),
              child: Container(
                height: size.height * 0.065,
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                    child: Text(
                  'Login',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ),
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       if (key.currentState!.validate()) {
            //         var tenDangNhap = txtUser.text;
            //         var matKhau = txtUser.text;
            //         showDialog(
            //             context: context,
            //             builder: (context) {
            //               return AlertDialog(
            //                 content: Text(
            //                     "tên đăng nhập : ${tenDangNhap} \n mật khẩu : ${matKhau}"),
            //               );
            //             });

            //         print(
            //             "Ok, all passs \n tên đăng nhập : ${tenDangNhap} \n mật khẩu : ${matKhau}");
            //       } else {
            //         print("not passs");
            //       }
            //     },
            //     child: Text('Đăng nhập'))
          ],
        ),
      ),
    );
  }
}
