import 'package:bookly/Features/searchView/presentation/view/widgets/searchResultsView.dart';
import 'package:flutter/material.dart';

class CustomSearch extends SearchDelegate {
  List username = [
    "ali",
    "mohamed",
    "hend",
    "hadeer",
    "mazen",
    "ali",
    "mohamed",
    "hend",
    "hadeer",
    "mazen"
  ];
  List? filter;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          // Navigator.of(context).pop();
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text("welcome $query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: listViewResults(),
      );
    } else {
      filter = username.where((element) => element.contains(query)).toList();
      return ListView.builder(
        itemCount: filter!.length,
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {
              showResults(context);
            },
            child: Card(
                child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "${filter![i]}",
                style: const TextStyle(fontSize: 20),
              ),
            )),
          );
        },
      );
    }
  }
}
