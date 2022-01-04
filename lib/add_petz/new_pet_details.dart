import 'package:flutter/material.dart';

class AddPet extends StatefulWidget {
  const AddPet({Key? key}) : super(key: key);

  @override
  _AddPetState createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {
  Color kPrimaryColor = Color(0xFF6F35A5);
  Color kPrimaryLightColor = Color(0xFFF1E6FF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Add Your Pet",
          style: TextStyle(color: Colors.grey.shade800),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _buildPageContent(),
    );
  }

  Widget _buildPageContent() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                Container(
                  height: 320,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://image.freepik.com/free-photo/adorable-brown-white-basenji-dog-smiling-giving-high-five-isolated-white_346278-1657.jpg"), fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 20.0,
                ),

                TextField(
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: kPrimaryColor,
                    ),
                    hintText: "Name of your pet",
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  cursorColor: kPrimaryColor,
                  decoration: InputDecoration(
                    icon: Icon(
                      Icons.email,
                      color: kPrimaryColor,
                    ),
                    hintText: "Species",
                    border: InputBorder.none,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),

                Container(
                  child: buildDropdownButton(['Select','Male','Female'],'Select'),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: buildDropdownButton(['Select','Cat','Dog','Fish'],'Select'),
                ),
                SizedBox(
                  height: 10.0,
                ),

                SizedBox(
                  height: 10.0,
                ),

                //_buildImagesGrid()
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              _buildAddToCartButton(),
            ],
          )
        ],
      ),
    );
  }

  Widget buildDropdownButton(List<String> items, String selectedValue) {
    return DropdownButton<String>(
      isExpanded: true,
      value: selectedValue,
      onChanged: (_) {},
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  Widget _buildImagesGrid() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.all(10.0),
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Image.network(
            "",
            height: 80,
          ),
          SizedBox(
            width: 20.0,
          ),
          Image.network(
            "",
            height: 80,
          ),
          SizedBox(
            width: 20.0,
          ),
          Image.network(
            "",
            height: 80,
          ),
        ],
      ),
    );
  }

  Widget _buildAddToCartButton() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0)),
              onPressed: () {},
              child: Text("Add Pet"),
              color: Colors.deepPurple,
              textColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

