import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  static String id = '2';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List cat = [
    'trousers',
    'trousers',
    'trousers',
    'trousers',
    'trousers',
    'trousers',
    'trousers',
    'trousers'
  ];
  List product = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS34wO2IyVO1LwNGI0Yf7rmG45Sisu0b4Phrg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQwhmMJb18htFsGTfF4o71jisEDPsiUoIL2g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyZqd22MeVsV-5xey36ayZlKPlUf_je-oSMA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVLGCCAVr2fk0P_n88dZYsdSUVvxJK_PBc7w&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyZqd22MeVsV-5xey36ayZlKPlUf_je-oSMA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyZqd22MeVsV-5xey36ayZlKPlUf_je-oSMA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyZqd22MeVsV-5xey36ayZlKPlUf_je-oSMA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyZqd22MeVsV-5xey36ayZlKPlUf_je-oSMA&usqp=CAU',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(FontAwesomeIcons.listUl),
                    Icon(
                      FontAwesomeIcons.search,
                    ),
                    Icon(FontAwesomeIcons.shoppingBag),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Discover',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Fashion is all about beauty',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300)),
            ),
            Container(
              width: 100,
              height: 90,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cat.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(product[index])),
                        borderRadius: BorderRadius.circular(10)),
                    width: 180,
                    height: 60,
                    child: Center(child: Text(cat[index])),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Prducts',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                TextButton(onPressed: () {}, child: Text('See All'))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 250,
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: product.length,
                    itemBuilder: (context, index) => Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(product[index]))),
                                  height: 150,
                                  width: 250),
                            ),
                            Text(
                              'Jacket',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Text('100',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15)),
                            Text('for men',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15))
                          ],
                        )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('For you',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
                TextButton(onPressed: () {}, child: Text('See All')),
              ],
            ),
            Container(
              width: 150,
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.grey[300],
                        width: 150,
                        height: 90,
                        child: Image(
                            image: NetworkImage(
                                'https://i.pinimg.com/originals/60/59/2c/60592c5d424d06a689496086ce25b95a.jpg')),
                      ),
                      Column(
                        children: [Text('Jacket'), Text('100')],
                      ),
                      Icon(FontAwesomeIcons.shopify),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
