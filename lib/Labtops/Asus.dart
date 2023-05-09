import 'package:flutter/material.dart';

class Asus extends StatelessWidget {
  const Asus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(110, 167, 233, 0.842),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        leading: Center(
          child: Text(
            "Asus",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [],
        ),
      ),
    );
  }
}
