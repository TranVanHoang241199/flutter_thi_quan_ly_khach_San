import 'package:flutter/material.dart';
import 'package:flutter_quan_ly_phong_khach_san/screens/room/room_screen.dart';
import 'package:flutter_quan_ly_phong_khach_san/screens/signin/signin_screen.dart';

import 'home_screen.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Trần Văn Hoàng'),
            accountEmail: Text(
              'vanhoangtran241199@gmail.com',
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/imgPr.JPG',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyE-S8C6w7KltHZg15aUbTzT62vGcnK_pWWQ&usqp=CAU')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Trang chủ'),
            onTap: () => Navigator.of(context).pop(HomeScreen()),
          ),
          ListTile(
            leading: Icon(Icons.motorcycle),
            title: Text('Quản lý phòng'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => RomScreen())),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Khách hàng'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen())),
          ),
          ListTile(
            leading: Icon(Icons.manage_accounts_rounded),
            title: Text('Phục vụ'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen())),
          ),
          ListTile(
            leading: Icon(Icons.account_tree_outlined),
            title: Text('Nhân Viên'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen())),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Thông Báo'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomeScreen())),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '8',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Cài đặt'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Ghi chú'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Thoát'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => SignInScreen()),
                (Route<dynamic> route) => false),
          ),
        ],
      ),
    );
  }
}
