import 'package:flutter/material.dart';
import 'package:travel_app/models/places.dart';
// import 'package:travel_app/util/places.dart';
import 'package:travel_app/widgets/icon_badge.dart';

class Details extends StatelessWidget {
  final TourPlace place;

  const Details({Key key, @required this.place}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () => Navigator.pop(context),
        ),
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
          SizedBox(height: 10.0),
          buildSlider(context),
          SizedBox(height: 20),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${place.name}",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.bookmark,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 14,
                    color: Colors.blueGrey[300],
                  ),
                  SizedBox(width: 3),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${place.address}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.blueGrey[300],
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${place.price}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Row(
                    children: [
                      Text("${place.rating}"),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.star_outlined,
                        size: 15,
                        color: Colors.amber,
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 40),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Details",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "${place.description}",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 15.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10.0),
            ],
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(
      //     Icons.map,
      //   ),
      //   onPressed: () {},
      // ),
    );
  }

  buildSlider(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 20),
        height: 250.0,
        child:
            // ListView.builder(
            //   scrollDirection: Axis.horizontal,
            //   primary: false,
            //   itemCount: places == null ? 0 : places.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     final place = places[index];

            //     return
            Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(
              "${place.img}",
              height: 250.0,
              width: MediaQuery.of(context).size.width - 40.0,
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
