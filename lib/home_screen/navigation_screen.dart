import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tracker_kidz/home_screen/widgets/home_top_widget.dart';

void main() => runApp(const NavScreen());

class NavScreen extends StatelessWidget {
  const NavScreen({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Catg {
  String? name;
  IconData? icon;
  int? number;
  Catg({this.icon, this.name, this.number});
}

class FurnitureCatg {
  IconData? icon;
  bool? elivation;
  FurnitureCatg({this.icon, this.elivation});
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final primary = Color(0xff3E065F);
  final secondary = Color(0xff8E05C2);

  final List<Map> schoolLists = [
    {
      "name": "Edgewick Scchol",
      "location": "572 Statan NY, 12483",
      "type": "Higher Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png"
    },
    {
      "name": "Xaviers International",
      "location": "234 Road Kathmandu, Nepal",
      "type": "Higher Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/31/13/14/animal-2023924_960_720.png"
    },
    {
      "name": "Kinder Garden",
      "location": "572 Statan NY, 12483",
      "type": "Play Group School",
      "logoText":
      "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "WilingTon Cambridge",
      "location": "Kasai Pantan NY, 12483",
      "type": "Lower Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png"
    },
    {
      "name": "Fredik Panlon",
      "location": "572 Statan NY, 12483",
      "type": "Higher Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_960_720.png"
    },
    {
      "name": "Whitehouse International",
      "location": "234 Road Kathmandu, Nepal",
      "type": "Higher Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/31/13/14/animal-2023924_960_720.png"
    },
    {
      "name": "Haward Play",
      "location": "572 Statan NY, 12483",
      "type": "Play Group School",
      "logoText":
      "https://cdn.pixabay.com/photo/2016/06/09/18/36/logo-1446293_960_720.png"
    },
    {
      "name": "Campare Handeson",
      "location": "Kasai Pantan NY, 12483",
      "type": "Lower Secondary School",
      "logoText":
      "https://cdn.pixabay.com/photo/2017/01/13/01/22/rocket-1976107_960_720.png"
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle,
              color: Colors.grey.shade700,
            ),
          ),
        ],
        backgroundColor: Colors.white70,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.grey.shade700,
            )),
        title: Text(
          'Location: ',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
          children: [
            buildPetCategories(),
            SizedBox(height: 20,),
            Container (
              child: homeScreenBottom,
            )
          ],
          ),
    );
  }

  Widget buildPetCategories(){
    List<FurnitureCatg> furnitureCategoriesList = [
      FurnitureCatg(icon: Icons.desktop_windows, elivation: true),
      FurnitureCatg(icon: Icons.account_balance_wallet, elivation: false),
      FurnitureCatg(icon: Icons.security, elivation: false),
      // FurnitureCatg(icon: Icons.chat, elivation: false),
      // FurnitureCatg(icon: Icons.money, elivation: false),
    ];
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Container(
            height: 100.0,
            //color: Colors.red,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: furnitureCategoriesList.length,
              itemBuilder: (context, int index) => FurnitureCategory(
                item: furnitureCategoriesList[index],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 145),
            width: double.infinity,
            child: ListView.builder(
                itemCount: schoolLists.length,
                itemBuilder: (BuildContext context, int index) {
                  return buildList(context, index);
                }),
          ),
        ]
      ),
    );
  }

  Widget buildList(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 110,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 3, color: secondary),
              image: DecorationImage(
                  image: NetworkImage(schoolLists[index]['logoText']),
                  fit: BoxFit.fill),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  schoolLists[index]['name'],
                  style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: secondary,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(schoolLists[index]['location'],
                        style: TextStyle(
                            color: primary, fontSize: 13, letterSpacing: .3)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.school,
                      color: secondary,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(schoolLists[index]['type'],
                        style: TextStyle(
                            color: primary, fontSize: 13, letterSpacing: .3)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  final Widget homeScreenBottom = Column(
      children: <Widget>[
  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
  mainAxisSize: MainAxisSize.max,
  children: <Widget>[
    Text("Most Trending Viewed Pets",
        style: TextStyle(
            color: Colors.black87,
            fontSize: 15,
            fontWeight: FontWeight.w700)),
    Spacer(),
    Builder(
        builder: (BuildContext context) => InkWell(
          onTap:(){},
          child: Text(
            "Add Pet",
            style: TextStyle(
                fontSize: 14, color: Theme.of(context).primaryColor),
          ),
        ))
  ],
      ),
  ),
        Container(
          height: 210,
          child: ListView(scrollDirection: Axis.horizontal, children: cityCards),
        )
      ],
  );
}
List<CityCard> cityCards = [
  CityCard(
      "https://cdn.pixabay.com/photo/2013/03/02/02/41/city-89197_960_720.jpg",
      "Sweetie",
      "1 Jan",
      "25",
      "500",
      '440'),
  CityCard(
      "https://cdn.pixabay.com/photo/2017/12/10/17/40/prague-3010407_960_720.jpg",
      "Alice",
      "11 May",
      "50",
      "500",
      '440'),
  CityCard(
      "https://cdn.pixabay.com/photo/2014/07/01/12/35/taxi-cab-381233_960_720.jpg",
      "Morang",
      "12 Aug",
      "10",
      "500",
      '440'),
  CityCard(
      "https://cdn.pixabay.com/photo/2014/07/01/12/35/taxi-cab-381233_960_720.jpg",
      "Tom",
      "5 Sep",
      "75",
      "500",
      '440'),
  CityCard(
      "https://cdn.pixabay.com/photo/2014/07/01/12/35/taxi-cab-381233_960_720.jpg",
      "Peter",
      "10 Nov",
      "60",
      "500",
      '440'),
  CityCard(
      "https://cdn.pixabay.com/photo/2014/07/01/12/35/taxi-cab-381233_960_720.jpg",
      "Kim",
      "8 Feb",
      "65",
      "500",
      '440'),
  CityCard(
      "https://cdn.pixabay.com/photo/2014/07/01/12/35/taxi-cab-381233_960_720.jpg",
      "Shredder",
      "18 Oct",
      "40",
      "500",
      '440'),
  CityCard(
      "https://cdn.pixabay.com/photo/2014/07/01/12/35/taxi-cab-381233_960_720.jpg",
      "Cleo",
      "14 Mar",
      "70",
      "500",
      '440'),
  CityCard(
      "https://cdn.pixabay.com/photo/2014/07/01/12/35/taxi-cab-381233_960_720.jpg",
      "Buster",
      "23 Oct",
      "45",
      "500",
      '440'),
];

class CityCard extends StatelessWidget {
  final String imagePath, cityName, monthYear, discount, oldPrice, newPrice;
  CityCard(this.imagePath, this.cityName, this.monthYear, this.discount,
      this.oldPrice, this.newPrice);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Stack(
          children: <Widget>[
            Container(
              width: 160,
              height: 210,
              child: Image.network(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              width: 160,
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.black, Colors.black12])),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 10,
              width: 145,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        cityName,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1),
                      ),
                      Text(
                        monthYear,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "$discount%",
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
