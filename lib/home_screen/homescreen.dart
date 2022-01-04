import 'package:flutter/material.dart';
import 'package:tracker_kidz/add_petz/new_pet_details.dart';
import 'package:tracker_kidz/profile/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            icon: Icon(
              Icons.person,
              color: Colors.grey.shade700,
            ),
          ),
        ],
        backgroundColor: Colors.white70,
        title: Text(
          'Welcome',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        // bottom: _buildBottomBar(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AddPet())) ;},
        child: Text("+"),
        backgroundColor: Color(0xff8e05c2),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Text(
              "Learn Pets",
              // style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.only(top: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return _learnPetsList(context);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Text(
              "My Pets",
              // style: Theme.of(context).textTheme.title,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 150,
            margin: EdgeInsets.only(top: 15),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return _myPetsList(context);
              },
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.grey.shade300,
            height: 60.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    "Vets Near Me",
                    // style: Theme.of(context).textTheme.title,
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      print("hello");
                    },
                    child: Text("View all"),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 4.0),
          ...[1, 2, 3, 4, 5].map(
                (product) => NearbyVetsListItem(
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }

  Widget _myPetsList(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey,
              image: DecorationImage(
                image: NetworkImage("https://image.freepik.com/free-photo/portrait-adorable-domestic-cat_23-2149167079.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 150,
            height: 150,
          ),
          Positioned(
            bottom: 0,
            left: 10,
            right: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              color: Colors.black87,
              child: Text(
                "Rocko",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _learnPetsList(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
                image: DecorationImage(
                    image: NetworkImage("https://image.freepik.com/free-photo/selective-focus-shot-adorable-kooikerhondje-dog-field_181624-29383.jpg"), fit: BoxFit.cover)),
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 10),
            width: 100,
            height: 100,
          ),
          SizedBox(
            height: 10,
          ),
          Text("Tables")
        ],
      ),
    );
  }
}

class NearbyVetsListItem extends StatelessWidget {
  final Function onPressed;
  const NearbyVetsListItem({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: MaterialButton(
        padding: const EdgeInsets.all(0),
        elevation: 0.5,
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: onPressed as void Function()?,
        child: Row(
          children: <Widget>[
            Ink(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: NetworkImage("https://image.freepik.com/free-vector/aquarium-with-single-golden-fish_1284-18775.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text("Pet care"),
                            SizedBox(
                              height: 5,
                            ),
                            Text("London", )
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.assistant_direction),
                        onPressed: () {
                          print('tapped');
                        },
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}