import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lapco/FirstScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const route = "/LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  final key1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Form(
            key: key1,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color.fromRGBO(110, 167, 233, 0.842),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Image.asset("images/lapco.png")),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.839),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Labco",
                            style: TextStyle(
                              fontSize: 70,
                              color: Color.fromRGBO(110, 167, 233, 0.842),
                            ),
                          ),
                          TextFormFieldName(),
                          TextFormFieldName2(),
                          TwoButtons(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Row TwoButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            SystemNavigator.pop();
          },
          child: Row(
            children: [
              Text(
                "EXITING",
                style: TextStyle(),
              ),
              Icon(
                Icons.not_started_sharp,
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (key1.currentState!.validate()) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(name: controller1.text),
                ),
              );
            } else {}
          },
          child: Row(
            children: [
              Text(
                "LOGEN",
                style: TextStyle(),
              ),
              Icon(
                Icons.not_started_sharp,
              ),
            ],
          ),
        ),
      ],
    );
  }

  TextFormField TextFormFieldName() {
    return TextFormField(
      controller: controller1,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "empty is not right";
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        hintText: "Enter Your Name",
        label: Text("Enter Your Name"),
      ),
    );
  }

  TextFormField TextFormFieldName2() {
    return TextFormField(
      controller: controller2,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "empty is not right";
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.lock), // border: OutlineInputBorder(),
        hintText: "Enter Your password",
        label: Text("Enter Your password"),
      ),
    );
  }
}
