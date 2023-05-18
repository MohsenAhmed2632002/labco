import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lapco/Model/Model.dart';
import 'package:url_launcher/url_launcher.dart';

class HP extends StatefulWidget {
  HP({super.key});

  @override
  State<HP> createState() => _HPState();
}

class _HPState extends State<HP> {
  TextEditingController controller2 = TextEditingController();
  static List<LabtopModel> _laptops = [
    LabtopModel(
      name: "Hp elitwbook",
      enfor:
          "لاب توب اتش بي ايليت بوك 840 بشاشة مقاس 14 بوصة- مع ويندوز ومعالج انتل كور i5 بسرعة 2.4 جيجاهرتز بالاضافى الى ذاكرة رام 8 جيجا وهارد SSD بسعة 256 جيجابايت، فضي"
          "لابتوب ديل انسبيرون 5410 2 في 1 قابل للطي 360 درجة - انتل كورi5-1135G7الجيل 11، 12 جيجا رام هارد 256 جيجا وSSD، رسومات انتل ايرس Xe، شاشة 14 بوصة FHD باللمس، بصمة اصابع، كيبورد مضاءه، ويندوز 10، فضي",
      photo: "images/Pic15.jpg",
      pross: 'Core i5-11',
      hard: 'ssd 256',
      ram: '8',
      price: "17.000",
      url:
          'https://www.amazon.eg/%D9%86%D9%88%D8%AA-%D8%A8%D9%88%D9%83-%D8%A7%D9%84%D9%8A%D8%AA-840-%D9%85%D9%82%D8%A7%D8%B3/dp/B079T6C5MG/ref=sr_1_10?crid=QRSBGZHFZMW3&keywords=hp+elitebook&qid=1684437994&sprefix=hp+elitwbook%2Caps%2C327&sr=8-10',
    ),
    LabtopModel(
      name: "Hp Envy X360",
      enfor:
          "لاب توب اتش بي بمعالج AMD رايزن، 5 4500U (رينوار)، هارد ديسك 512 ججابايت، منفذ PCIe 8 جيجابايت، رامات 8 جيجا ، اسود، قارئ لبمات الاصابع، DDR4 [8JN83AV] [8LZ63AV] الدرن 20C1",
      photo: "images/Pic14.jpg",
      pross: 'Core i7-11',
      hard: 'ssd 512',
      ram: '8',
      price: "47.000",
      url:
          'https://www.amazon.eg/ENVY-x360-Convert-13-bd0033dx-%D9%84%D8%A7%D8%A8/dp/B09881DTDN/ref=sr_1_1?keywords=hp+envy+x360&qid=1684438171&sprefix=hp+Envy%2Caps%2C157&sr=8-1',
    ),
    LabtopModel(
      name: "Hp envy ",
      enfor:
          "HP انفاي X360 13-bf0013dx 2 في 1-12th انتيل كورi7-1250U 10-انوية8جيجا SSD، 512 جيجا، انتل ايريس X جرافيكس، شاشة 13.3بوصة FHD 1920X1200 WUXGA IPS لمس، بصمة، لوحة مفاتيح باضاءة خلفية KB، ويندوز 11، فضي",
      photo: "images/Pic13.jpg",
      pross: 'Core i5-U',
      hard: ' 512',
      ram: '8',
      price: "28.000",
      url:
          'https://www.amazon.eg/%D8%A7%D8%AA%D8%B4-%D8%A8%D9%8A-%D8%AC%D8%AC%D8%A7%D8%A8%D8%A7%D9%8A%D8%AA%D8%8C-%D8%AC%D9%8A%D8%AC%D8%A7%D8%A8%D8%A7%D9%8A%D8%AA%D8%8C-%D8%A7%D9%84%D8%A7%D8%B5%D8%A7%D8%A8%D8%B9%D8%8C/dp/B09G17FH6J/ref=sr_1_4?crid=2TELENRE0KCC8&keywords=hp+envy&qid=1684438276&sprefix=hp+envy+%2Caps%2C140&sr=8-4',
    ),
    LabtopModel(
      name: "Hp Pavilion",
      enfor: "لاب توب اتش بي بافيليون 13-bb0003ne",
      photo: "images/Pic12.jpg",
      pross: 'Core i5 -7',
      hard: 'ssd 521',
      ram: '8',
      price: "19.000",
      url:
          'https://www.amazon.eg/%D8%A7%D8%AA%D8%B4-%D8%A8%D9%8A-NB-HP-EG0101NE-CI5-8-512-2-D-353G7EA-ABV/dp/B0B4PJHLJ9/ref=sr_1_2?crid=264ASTLHALKI6&keywords=hp+pavilion&qid=1684438376&sprefix=hppavilion%2Caps%2C160&sr=8-2',
    ),
    LabtopModel(
      name: "Hp Pavilion",
      enfor:
          "لاب توب العاب اتش بي بافيليون 15-dk2087ne انتل كور i5-11300H جيل 11 ذاكرة رام 8GB HDD 1 تيرابايت+SSD 256GB انفيديا جيفورس GTX 1650 4GB GDDR6 شاشة IPS FHD 15.6 بوصة 1920×1080 144هرتز دوس اسود",
      photo: "images/Pic11.jpg",
      pross: 'Core i5 -11',
      hard: 'HDD 1T',
      ram: '8',
      price: "28.000",
      url:
          'https://www.amazon.eg/%D8%A8%D8%A7%D9%81%D9%8A%D9%84%D9%8A%D9%88%D9%86-15-dk2087ne-i5-11300H-%D8%AA%D9%8A%D8%B1%D8%A7%D8%A8%D8%A7%D9%8A%D8%AA-1920%C3%971080/dp/B0B3JHBFHK/ref=sr_1_1?crid=3LQQHOVG2EVWU&keywords=hp+pavilion+15&qid=1684438478&sprefix=hp+pavilion+%2Caps%2C144&sr=8-1',
    ),
    LabtopModel(
      name: "HP probook 650",
      enfor:
          "لاب توب بروبوك 650 G1 من اتش بي، معالج انتل i5-4310U 2.0 جيجاهرتز، 8 جيجابايت، 320 جيجابايت، 15.6 بوصة، ناسخ دي في دي، بلوتوث، بدون كاميرا، ويندوز 7 برو",
      photo: "images/Pic10.jpg",
      pross: 'core i5 -4',
      hard: 'HDD 320',
      ram: '8',
      price: "6.000",
      url:
          'https://www.amazon.eg/650-G1-%D8%A7%D8%AA%D8%B4-%D8%AC%D9%8A%D8%AC%D8%A7%D9%87%D8%B1%D8%AA%D8%B2%D8%8C-%D8%AC%D9%8A%D8%AC%D8%A7%D8%A8%D8%A7%D9%8A%D8%AA%D8%8C/dp/B01BYB7Z9M/ref=sr_1_3?crid=3PZWSGQ9ZXSZG&keywords=hp+probook+650&qid=1684438624&sprefix=hp+probook+650%2Caps%2C142&sr=8-3',
    ),
    LabtopModel(
      name: "Hp probook",
      photo: "images/Pic9.jpg",
      enfor:
          "لاب توب بروبوك من اتش بي، 450 G8 (الجيل 11 انتل كور i7 1165U، رام 8 GB، هارد 512 GB PCIe الذاكرة المستديمة SSD، كارت شاشة انفيديا جيفورس MX450 2G، شاشة 15.6 بوصة HD، لون فضي، نظام تشغيل دوس)",
      pross: 'Core i7-11',
      hard: 'SSD 512',
      ram: '8',
      price: "27.000",
      url:
          'https://www.amazon.eg/%D8%A7%D8%AA%D8%B4-%D8%A8%D9%8A-G8-%D8%A7%D9%86%D8%AA%D9%84-i5-1135G7-1920%C3%971080/dp/B0BP9X3TS5/ref=sr_1_4?keywords=hp+probook&qid=1684438542&sprefix=hpPro%2Caps%2C191&sr=8-4',
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
                                ),
                              ),
                              Text(
                                "Ram: ${display[index].ram}",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 20,
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
//sad
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
