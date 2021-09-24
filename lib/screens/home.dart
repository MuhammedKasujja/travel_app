import 'package:flutter/material.dart';
import 'package:travel_app/util/places.dart';
import 'package:travel_app/widgets/horizontal_place_item.dart';
import 'package:travel_app/widgets/icon_badge.dart';
import 'package:travel_app/widgets/search_bar.dart';
import 'package:travel_app/widgets/vertical_place_item.dart';

import 'trip.items.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourista'),
        actions: <Widget>[
          IconButton(
            icon: IconBadge(
              icon: Icons.notifications_none,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Where are you \ngoing?",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SearchBar(),
          ),
          buildHorizontalList(context),
          buildCategoryList(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            child: Text(
              "Most visted hotels",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          buildVerticalList(),
        ],
      ),
    );
  }

  Widget buildHorizontalList(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 20.0),
      height: 250.0,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: places == null ? 0.0 : places.length,
        itemBuilder: (BuildContext context, int index) {
          final place = places.reversed.toList()[index];
          return HorizontalPlaceItem(place: place);
        },
      ),
    );
  }

  Widget buildVerticalList() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: ListView.builder(
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: places == null ? 0 : places.length,
        itemBuilder: (BuildContext context, int index) {
          final place = places[index];
          return VerticalPlaceItem(place: place);
        },
      ),
    );
  }

  Widget buildCategoryList() {
    final categories = ['Trucks', 'Foods', 'Bike Riding', 'Most visted'];
    return Container(
      height: 80,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView.builder(
          primary: false,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TripItemList(
                        categoryIndex: index,
                        name: categories[index],
                      ),
                    )),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 100),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue[50]),
                  child: Center(
                      child: Text(
                    categories[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                      color: Colors.blueGrey[500],
                    ),
                  )),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
