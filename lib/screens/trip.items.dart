import 'package:flutter/material.dart';
import 'package:travel_app/models/items.dart';
import 'package:travel_app/util/places.dart';

class TripItemList extends StatelessWidget {
  final int categoryIndex;
  final String name;
  const TripItemList({Key key, @required this.categoryIndex, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.name),
      ),
      body: _listItems(),
    );
  }

  Widget _listItems() {
    final List<TripItem> items = this.categoryIndex == 0
        ? cars
        : this.categoryIndex == 1
            ? foods
            : this.categoryIndex == 2
                ? bikes
                : this.categoryIndex == 3
                    ? vistedPlaces
                    : [];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];
          return Container(
            child: Column(
              children: [
                Container(
                    height: 200,
                    child: Image.asset(
                      item.image,
                      fit: BoxFit.fitWidth,
                      width: MediaQuery.of(context).size.width,
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(item.name),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
