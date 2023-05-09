import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:lapco/Labtops/Acer.dart';
import 'package:lapco/Labtops/Apple.dart';
import 'package:lapco/Labtops/Asus.dart';
import 'package:lapco/Labtops/Dell.dart';
import 'package:lapco/Labtops/HP.dart';
import 'package:lapco/Labtops/Lenovo.dart';
import 'package:lapco/Labtops/Samsung.dart';

class HomePage extends StatelessWidget {
  final String name;
  HomePage({
    Key? key,
    required this.name,
  }) : super(key: key);
  final List<String> laptops = [
    "Dell",
    "HP",
    "Lenovo",
    "Apple",
    "Asus",
    "Samsung",
    "Acer",
  ];
  final List<Widget> laptopsWidgets = [
    Dell(),
    HP(),
    Lenovo(),
    Apple(),
    Asus(),
    Samsung(),
    Acer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(110, 167, 233, 0.842),
        leading: Center(
          child: Container(
            height: 100,
            child: Image.asset(
              "images/lapco.png",
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              SystemNavigator.pop();
            },
            icon: Icon(
              Icons.logout_outlined,
              size: 30,
            ),
          ),
        ],
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        title: Center(
          child: Text(
            "HI $name",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(110, 167, 233, 0.842),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return laptopsWidgets[index];
                    }),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        15,
                      ),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      laptops[index],
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromRGBO(16, 120, 240, 1),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: laptops.length,
        ),
      ),
    );
  }
}
