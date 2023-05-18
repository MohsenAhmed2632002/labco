import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lapco/Model/Model.dart';
import 'package:url_launcher/url_launcher.dart';

class Dell extends StatefulWidget {
  Dell({super.key});

  @override
  State<Dell> createState() => _DellState();
}

class _DellState extends State<Dell> {
  TextEditingController controller2 = TextEditingController();
  static List<LabtopModel> _laptops = [
    LabtopModel(
      name: "Dell Inspiron",
      enfor:
          "لابتوب ديل انسبيرون 5410 2 في 1 قابل للطي 360 درجة - انتل كورi5-1135G7الجيل 11، 12 جيجا رام هارد 256 جيجا وSSD، رسومات انتل ايرس Xe، شاشة 14 بوصة FHD باللمس، بصمة اصابع، كيبورد مضاءه، ويندوز 10، فضي",
      photo: "images/Pic3.jpg",
      pross: 'Core i5-11',
      hard: 'ssd 265',
      ram: '12',
      price: "30,300",
      url:
          'https://www.amazon.eg/%D9%84%D8%A7%D8%A8%D8%AA%D9%88%D8%A8-%D8%AF%D9%8A%D9%84-%D8%A7%D9%86%D8%B3%D8%A8%D9%8A%D8%B1%D9%88%D9%86-5410-%D9%83%D9%88%D8%B1i5-1135G7%D8%A7%D9%84%D8%AC%D9%8A%D9%84/dp/B0BVRNVZY4/ref=sr_1_1?crid=JCMY8ZFCHL18&keywords=Dell+Inspiron&qid=1684435308&sprefix=dell+inspiron%2Caps%2C246&sr=8-1',
    ),
    LabtopModel(
      name: "Dell Forst",
      enfor:
          "لاب توب للالعاب G15-5520 من ديل جيل 12 انتل كور i7 12700H اربع عشرة نواة، رام 16 جيجا SSD 512 جيجا، انفيديا جي فورس RTX3060 GDDR6‏ 6 جيجا، FHD‏ 120 هرتز 15.6 بوصة، كيبورد باضاءة خلفية، يوبونتو، رمادي",
      photo: "images/Pic2.jpg",
      pross: 'Core i5-10',
      hard: '1T',
      ram: '8',
      price: "21.000",
      url:
          'https://www.amazon.eg/%D9%84%D8%A7%D8%A8-%D8%AA%D9%88%D8%A8-%D8%AF%D9%8A%D9%84-%D9%84%D8%A7%D8%AA%D9%8A%D8%AA%D9%8A%D9%88%D8%AF-5410/dp/B0BBDHF8KW/ref=sr_1_11?keywords=Dell+Forst&qid=1684435945&sr=8-11',
    ),
    LabtopModel(
      name: "Dell XPS",
      enfor:
          "لاب توب انسبيرون 15 3000 FHD/1080p/معالج ايه ام دي رايزن 5/ذاكرة 8GB/SSD 256GB/بطاقة رسومات ايه ام دي راديون فيجا 8/ويندوز 10 هوم، اسود (احدث موديل) من ديل",
      photo: "images/Pic3.jpg",
      pross: 'Core i3-11',
      hard: 'ssd 265',
      ram: '8',
      price: "17.000",
      url:
          'https://www.amazon.eg/%D8%AF%D9%8A%D9%84-%D8%A7%D9%86%D8%B3%D8%A8%D9%8A%D8%B1%D9%88%D9%86-5406-%D9%82%D8%A7%D8%A8%D9%84-%D9%84%D9%84%D8%AA%D8%AD%D9%88%D9%8A%D9%84/dp/B09YX1YRLL/ref=sr_1_5?crid=3U4ILV4XFB322&keywords=Dell+XPS&qid=1684436848&sprefix=dell+xps%2Caps%2C293&sr=8-5',
    ),
    LabtopModel(
      name: "Dell G15 15",
      enfor:
          "لاب توب ديل للالعاب G15 5511 (15.6 بوصة) FHD وسرعة 120 هرتز وانتل كور i7-11800H، ذاكرة 16GB DDR4 RAM وهارد SSD 512 جيجابايت وانفيديا جي فورس RTX 3060 6GB GDDR6، ويندوز 10 هوم - اسود،(احدث اصدار)",
      photo: "images/Pic4.jpg",
      pross: 'Core i7-11',
      hard: 'ssd 512',
      ram: '16',
      price: "34,800",
      url:
          'https://www.amazon.eg/%D8%AF%D9%8A%D9%84-15-5515%D8%8C-%D8%A7%D9%86%D9%81%D9%8A%D8%AF%D9%8A%D8%A7-%D8%AC%D8%B1%D8%A7%D9%81%D9%8A%D9%83%D8%B3-120%D9%87%D8%B1%D8%AA%D8%B2%D8%8C/dp/B0BVST1X1Q/ref=sr_1_7?crid=3CSUU91SLZII5&keywords=Dell+G15+15&qid=1684437014&sprefix=dell+g15+15%2Caps%2C143&sr=8-7',
    ),
    LabtopModel(
      name: "Dell G Series",
      enfor:
          "لاب توب للالعاب G15-5520 من ديل جيل 12 انتل كور i7 12700H اربع عشرة نواة، رام 16 جيجا SSD 512 جيجا، انفيديا جي فورس RTX3060 GDDR6‏ 6 جيجا، FHD‏ 120 هرتز 15.6 بوصة، كيبورد باضاءة خلفية، يوبونتو، رمادي",
      photo: "images/Pic6.jpg",
      pross: 'Core i7-12',
      hard: 'ssd 512',
      ram: '16',
      price: "49.000",
      url:
          'https://www.amazon.eg/%D9%84%D9%84%D8%A7%D9%84%D8%B9%D8%A7%D8%A8-G15-5520-%D8%AF%D9%8A%D9%84-%D8%A7%D9%86%D9%81%D9%8A%D8%AF%D9%8A%D8%A7-%D9%8A%D9%88%D8%A8%D9%88%D9%86%D8%AA%D9%88%D8%8C/dp/B0B6CMBDNL/ref=sr_1_3?crid=22INJ853IUO84&keywords=Dell+G+Series&qid=1684437115&sprefix=dell+g+series%2Caps%2C169&sr=8-3',
    ),
    LabtopModel(
      name: "Dell Latitude",
      enfor:
          "ديل لاتيتيود 5530 بمعالج i7-1255U (16 جيجابايت/ 512 جيجا SSD/ ويندوز 11 برو/ 3 سنوات/ 15.6 بوصة",
      photo: "images/Pic7.jpg",
      pross: 'Core i7-12',
      hard: 'ssd 512',
      ram: '32',
      price: "",
      url:
          'https://www.amazon.eg/%D8%AF%D9%8A%D9%84-%D9%84%D8%A7%D8%AA%D9%8A%D8%AA%D9%8A%D9%88%D8%AF-%D8%A8%D9%85%D8%B9%D8%A7%D9%84%D8%AC-i7-1255U-%D8%AC%D9%8A%D8%AC%D8%A7%D8%A8%D8%A7%D9%8A%D8%AA/dp/B0B3TPB777/ref=sr_1_4?crid=2JCCJ3V19XHUW&keywords=Dell+Latitude&qid=1684437190&sprefix=dell+latitude%2Caps%2C142&sr=8-4',
    ),
    LabtopModel(
      name: "Dell Latitude 14",
      enfor:
          "لابتوب Intel UHD Graphics 620 ديل لاتيتيود 7400 - انتل كور i7 - 16 جيجا رام - 512 جيجا اس اس دي - 14 انش فل اتش دي - انتل وحدة معالجة الرسومات - ويندوز 10 برو - اسود",
      photo: "images/Pic8.jpg",
      pross: 'Core i5-10',
      hard: 'ssd 512',
      ram: '8',
      price: "21,500",
      url:
          'https://www.amazon.eg/%D9%84%D8%A7%D8%A8-%D8%AA%D9%88%D8%A8-%D8%AF%D9%8A%D9%84-%D9%84%D8%A7%D8%AA%D9%8A%D8%AA%D9%8A%D9%88%D8%AF-5410/dp/B0BBDHF8KW/ref=sr_1_2?crid=3T0CKE4QJX4UI&keywords=Dell+Latitude+14&qid=1684437245&sprefix=dell+latitude+14%2Caps%2C163&sr=8-2',
    ),
  ];

  List<LabtopModel> display = List.from(_laptops);
  void updateList(String value) {
    setState(() {
      display = _laptops
          .where(
            (element) => element.name.toLowerCase().contains(
                  value.toLowerCase(),
                ),
          )
          .toList();
    });
  }

  final double currentRating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(110, 167, 233, 0.842),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        title: Container(
          width: MediaQuery.of(context).size.height * 0.7,
          child: TextFormField(
            onChanged: ((value) => updateList(value)),
            controller: controller2,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "empty is not right";
              }
              return null;
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter Your laptop",
              label: Text("Enter Your laptop"),
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(110, 167, 233, 0.842),
        child: display.length == 0
            ? Center(
                child: Text(
                  "no data like you writers ",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                  ),
                ),
              )
            : ListView.builder(
                itemCount: display.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "${display[index].name}",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              RatingBar.builder(
                                  itemSize: 22,
                                  initialRating: currentRating,
                                  minRating: 0,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemPadding: EdgeInsets.all(2),
                                  itemCount: 5,
                                  itemBuilder: (contxet, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                  onRatingUpdate: (rating) {
                                    setState(() {
                                      currentRating == rating;
                                    });
                                  })
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "pross: ${display[index].pross}",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 20,
                                  //   color: Color.fromRGBO(110, 167, 233, 0.842),
                                ),
                              ),
                              Text(
                                "Ram: ${display[index].ram}",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 20,
                                  // color: Color.fromRGBO(110, 167, 233, 0.842),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: Image.asset(
                              "${display[index].photo}",
                            ),
                          ),
                          Text(
                            "${display[index].enfor}",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(110, 167, 233, 0.842),
                            ),
                          ),
                          Text(
                            "The Price: ${display[index].price} EP",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          TextButton(
                            onPressed: () => _launchUrl(index),
                            child: Text(
                              " Go To ${display[index].name} in Amazon",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 20,
                              ),
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

  Future<void> _launchUrl(int index) async {
    if (!await launchUrl(
      Uri.parse(
        display[index].url,
      ),
    )) {
      throw Exception('Could not launch ');
    }
  }
}

// onTap: () async {
//                               if (await launchUrl(
//                                 Uri.parse(
//                                   display[index].url,
//                                 ),
//                               )) ;
//                               {
//                                 throw Exception('Could not launch ');
//                               }
//                             },