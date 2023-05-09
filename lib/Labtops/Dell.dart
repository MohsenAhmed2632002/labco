import 'package:flutter/material.dart';

class Dell extends StatefulWidget {
  Dell({super.key});

  @override
  State<Dell> createState() => _DellState();
}

class _DellState extends State<Dell> {
  TextEditingController controller2 = TextEditingController();


  final List _laptops = [
    {
      "name": "Dell Inspiron",
      "photo": "images/Pic3.jpg",
      "enfor":
          "لابتوب ديل انسبيرون 5410 2 في 1 قابل للطي 360 درجة - انتل كورi5-1135G7الجيل 11، 12 جيجا رام هارد 256 جيجا وSSD، رسومات انتل ايرس Xe، شاشة 14 بوصة FHD باللمس، بصمة اصابع، كيبورد مضاءه، ويندوز 10، فضي",
    },
    {
      "name": "Dell XPS",
      "photo": "images/Pic3.jpg",
      "enfor":
          "لاب توب انسبيرون 15 3000 FHD/1080p/معالج ايه ام دي رايزن 5/ذاكرة 8GB/SSD 256GB/بطاقة رسومات ايه ام دي راديون فيجا 8/ويندوز 10 هوم، اسود (احدث موديل) من ديل",
    },
    {
      "name": "Dell Forst",
      "photo": "images/Pic2.jpg",
      "enfor":
          "لاب توب للالعاب G15-5520 من ديل جيل 12 انتل كور i7 12700H اربع عشرة نواة، رام 16 جيجا SSD 512 جيجا، انفيديا جي فورس RTX3060 GDDR6‏ 6 جيجا، FHD‏ 120 هرتز 15.6 بوصة، كيبورد باضاءة خلفية، يوبونتو، رمادي",
    },
    {
      "name": "Dell G15 15",
      "photo": "images/Pic4.jpg",
      "enfor":
          "لاب توب ديل للالعاب G15 5511 (15.6 بوصة) FHD وسرعة 120 هرتز وانتل كور i7-11800H، ذاكرة 16GB DDR4 RAM وهارد SSD 512 جيجابايت وانفيديا جي فورس RTX 3060 6GB GDDR6، ويندوز 10 هوم - اسود،(احدث اصدار)",
    },
    {
      "name": "Dell G Series",
      "photo": "images/Pic6.jpg",
      "enfor":
          "لاب توب للالعاب G15-5520 من ديل جيل 12 انتل كور i7 12700H اربع عشرة نواة، رام 16 جيجا SSD 512 جيجا، انفيديا جي فورس RTX3060 GDDR6‏ 6 جيجا، FHD‏ 120 هرتز 15.6 بوصة، كيبورد باضاءة خلفية، يوبونتو، رمادي"
    },
    {
      "name": "Dell Latitude",
      "photo": "images/Pic7.jpg",
      "enfor":
          "ديل لاتيتيود 5530 بمعالج i7-1255U (16 جيجابايت/ 512 جيجا SSD/ ويندوز 11 برو/ 3 سنوات/ 15.6 بوصة"
    },
    {
      "name": "Dell Latitude 14",
      "photo": "images/Pic8.jpg",
      "enfor":
          "لابتوب Intel UHD Graphics 620 ديل لاتيتيود 7400 - انتل كور i7 - 16 جيجا رام - 512 جيجا اس اس دي - 14 انش فل اتش دي - انتل وحدة معالجة الرسومات - ويندوز 10 برو - اسود"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(110, 167, 233, 0.842),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        title:Center(
          child: Text(
            "Dell",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ) ,
        // Container(
        //   width: MediaQuery.of(context).size.height * 0.7,
        //   child: TextFormField(
        //     onChanged: ((value) => updatelist(value)),
        //     controller: controller2,
        //     validator: (value) {
        //       if (value?.isEmpty ?? true) {
        //         return "empty is not right";
        //       }
        //       return null;
        //     },
        //     decoration: InputDecoration(
        //       border: OutlineInputBorder(),
        //       hintText: "Enter Your laptop",
        //       label: Text("Enter Your laptop"),
        //     ),
        //   ),
        // ),
        // leading:
         
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(110, 167, 233, 0.842),
        child: ListView.builder(
          itemCount: _laptops.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                  ),
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      15,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${_laptops[index]["name"]}",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Image.asset(
                        "${_laptops[index]["photo"]}",
                      ),
                    ),
                    Text(
                      "${_laptops[index]["enfor"]}",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromRGBO(110, 167, 233, 0.842),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
