import 'package:flutter/material.dart';

class HP extends StatelessWidget {
  HP({super.key});
  final List _laptop = [
    {
      "name": "Hp probook",
      "photo": "images/Pic9.jpg",
      "enfor":
          "لاب توب بروبوك من اتش بي، 450 G8 (الجيل 11 انتل كور i7 1165U، رام 8 GB، هارد 512 GB PCIe الذاكرة المستديمة SSD، كارت شاشة انفيديا جيفورس MX450 2G، شاشة 15.6 بوصة HD، لون فضي، نظام تشغيل دوس)"
    },
    {
      "name": "HP probook 650",
      "photo": "images/Pic10.jpg",
      "enfor":
          "لاب توب بروبوك 650 G1 من اتش بي، معالج انتل i5-4310U 2.0 جيجاهرتز، 8 جيجابايت، 320 جيجابايت، 15.6 بوصة، ناسخ دي في دي، بلوتوث، بدون كاميرا، ويندوز 7 برو"
    },
    {
      "name": "Hp Pavilion",
      "photo": "images/Pic11.jpg",
      "enfor":
          "لاب توب العاب اتش بي بافيليون 15-dk2087ne انتل كور i5-11300H جيل 11 ذاكرة رام 8GB HDD 1 تيرابايت+SSD 256GB انفيديا جيفورس GTX 1650 4GB GDDR6 شاشة IPS FHD 15.6 بوصة 1920×1080 144هرتز دوس اسود"
    },
    {
      "name": "Hp Pavilion",
      "photo": "images/Pic12.jpg",
      "enfor": "لاب توب اتش بي بافيليون 13-bb0003ne"
    },
    {
      "name": "Hp envy ",
      "photo": "images/Pic13.jpg",
      "enfor":
          "HP انفاي X360 13-bf0013dx 2 في 1-12th انتيل كورi7-1250U 10-انوية8جيجا SSD، 512 جيجا، انتل ايريس X جرافيكس، شاشة 13.3بوصة FHD 1920X1200 WUXGA IPS لمس، بصمة، لوحة مفاتيح باضاءة خلفية KB، ويندوز 11، فضي"
    },
    {
      "name": "Hp Envy X360",
      "photo": "images/Pic14.jpg",
      "enfor":
          "لاب توب اتش بي بمعالج AMD رايزن، 5 4500U (رينوار)، هارد ديسك 512 ججابايت، منفذ PCIe 8 جيجابايت، رامات 8 جيجا ، اسود، قارئ لبمات الاصابع، DDR4 [8JN83AV] [8LZ63AV] الدرن 20C1"
    },
    {
      "name": "Hp elitwbook",
      "photo": "images/Pic15.jpg",
      "enfor":
          "لاب توب اتش بي ايليت بوك 840 بشاشة مقاس 14 بوصة- مع ويندوز ومعالج انتل كور i5 بسرعة 2.4 جيجاهرتز بالاضافى الى ذاكرة رام 8 جيجا وهارد SSD بسعة 256 جيجابايت، فضي"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(110, 167, 233, 0.842),
        toolbarHeight: MediaQuery.of(context).size.height * 0.1,
        title: Center(
          child: Text(
            "HP",
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
          itemCount: _laptop.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
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
                      "${_laptop[index]["name"]}",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Image.asset(
                        "${_laptop[index]["photo"]}",
                      ),
                    ),
                    Text(
                      "${_laptop[index]["enfor"]}",
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
