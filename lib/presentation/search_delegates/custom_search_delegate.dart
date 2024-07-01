import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../utils/utils.dart';
import '../design/styles.dart';

class CustomSearchDelegate extends SearchDelegate {
  CustomSearchDelegate()
      : super(
          searchFieldLabel: Utils.searchCityHint,
          keyboardType: TextInputType.text,
          searchFieldStyle: searchCityStyle,
        );

  List<String> searchTerms = [
    "Abu Dhabi", // United Arab Emirates
    "Ankara", // Turkey
    "Yerevan", // Armenia
    "Baku", // Azerbaijan
    "Minsk", // Belarus
    "Sarajevo", // Bosnia and Herzegovina
    "Sofia", // Bulgaria
    "Zagreb", // Croatia
    "Nicosia", // Cyprus
    "Tbilisi", // Georgia
    "Astana", // Kazakhstan
    "Bishkek", // Kyrgyzstan
    "Vientiane", // Laos
    "Riga", // Latvia
    "Beirut", // Lebanon
    "Vilnius", // Lithuania
    "Luxembourg", // Luxembourg
    "Kuala Lumpur", // Malaysia
    "Podgorica", // Montenegro
    "Ulaanbaatar", // Mongolia
    "Kathmandu", // Nepal
    "Amsterdam", // Netherlands
    "Pyongyang", // North Korea
    "Islamabad", // Pakistan
    "Manila", // Philippines
    "Warsaw", // Poland
    "Bucharest", // Romania
    "Moscow", // Russia
    "Belgrade", // Serbia
    "Bratislava", // Slovakia
    "Ljubljana", // Slovenia
    "Colombo", // Sri Lanka
    "Damascus", // Syria
    "Dushanbe", // Tajikistan
    "Bangkok", // Thailand
    "Ankara", // Turkey
    "Ashgabat", // Turkmenistan
    "Kyiv", // Ukraine
    "Tashkent", // Uzbekistan
    "Hanoi", // Vietnam
    "Sana'a" // Yemen
  ];

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var term in searchTerms) {
      if (term.toLowerCase() == (query.toLowerCase())) {
        matchQuery.clear();
      }
      if (term.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(term);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return Slidable(
          startActionPane: ActionPane(
            motion: const ScrollMotion(),
            extentRatio: Utils.one / Utils.four,
            children: [
              SlidableAction(
                autoClose: true,
                spacing: 4,
                onPressed: (context) {},
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.lightBlue,
                icon: Icons.ac_unit_sharp,
                label: 'wow',
              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            extentRatio: Utils.one / Utils.four,
            children: [
              SlidableAction(
                onPressed: (context) {},
                autoClose: true,
                spacing: Utils.four as double,
                backgroundColor: Colors.red,
                foregroundColor: Colors.yellowAccent,
                icon: Icons.account_balance,
                label: 'boom',
              )
            ],
          ),
          child: ListTile(
            title: Text(result),
            onTap: () {
              query = result;
            },
          ),
        );
      },
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  void showResults(BuildContext context) {
    Navigator.of(context).popAndPushNamed(
      Utils.homeRoute,
      arguments: {Utils.city: query},
    );
    super.showResults(context);
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var term in searchTerms) {
      if (term.toLowerCase() == (query.toLowerCase())) {
        matchQuery.clear();
      }
      if (term.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(term);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return Slidable(
          child: ListTile(
            title: Text(result),
            onTap: () {
              query = result;
              close(context, matchQuery[index]);
            },
          ),
        );
      },
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = Utils.empty;
          },
          icon: const Icon(Icons.clear))
    ];
  }
}
