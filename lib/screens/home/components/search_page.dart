import 'dart:math';

import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class CustomSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
      ),
    ];
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    var categoures = [];
    return ListView.builder(
      itemCount: categoures.length,
      itemBuilder: (BuildContext context, int index) {
        var item = categoures[index];
        return GestureDetector(
          onTap: () {},
          child: Container(
            width: getProportionateScreenWidth(30),
            height: getProportionateScreenHeight(20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(Random().nextInt(255),
                  Random().nextInt(255), Random().nextInt(255), 1.0),
            ),
            child: Center(child: Text(item.toString())),
          ),
        );
      },
    );
    throw UnimplementedError();
  }
}
