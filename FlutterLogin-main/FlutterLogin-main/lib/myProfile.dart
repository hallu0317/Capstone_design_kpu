// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_login/announcement.dart';
import 'package:flutter_login/auth_controller.dart';
import 'package:flutter_login/fireStore.dart' as dbName;
import 'package:flutter_login/mainHome.dart';
import 'package:flutter_login/myProfileNotReservation.dart';
import 'package:get/get.dart';
import 'regions_reservation.dart';
import 'widget/appbar_widget.dart';

class MyProfile extends StatelessWidget {
  final String email;
  MyProfile({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 39, 52, 80),
        title: Text(
          "My Profile",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0.0, //앱바의 입체감을 없애주기위함
        centerTitle: true,
      ),
      drawer: DrawerArea(
        drawerAread: Drawer(),
      ),
      body: Column(
        children: [
          Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue[100],
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('img/face_image.PNG'),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  AuthController.instance.auth.currentUser!.email!,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Text(
                  "TUK HOTEL",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3.0),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        children: [
                          Text(
                            "Check In",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "15:00",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        children: [
                          Text(
                            "Check Out",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "11:00",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
            thickness: 2.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 40.0,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      dbName.userName,
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    )
                  ],
                ),
                Divider(
                  thickness: 2.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.call,
                      size: 40.0,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      dbName.userPhone,
                      style: TextStyle(color: Colors.black, fontSize: 20.0),
                    )
                  ],
                ),
                Divider(
                  thickness: 2.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
