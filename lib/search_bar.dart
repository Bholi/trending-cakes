import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBars extends StatelessWidget {
  const SearchBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SearchBar"),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: TextField(
              cursorColor: Colors.green,
              keyboardType: TextInputType.text,
              maxLength: 20,

              // maxLines: 3,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                          const BorderSide(color: Colors.green, width: 2)),
                  labelText: "Search anything"),
            ),
          ),
        ));
  }
}
