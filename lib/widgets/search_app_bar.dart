import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget with PreferredSizeWidget {
  @override final Size preferredSize;

  SearchAppBar({ Key? key }) : preferredSize = Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AppBar(
          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: "Settings",
              onPressed: () {
                Navigator.of(context).pushNamed("/settings");
              },
            ),
          ],
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 6.0, left: 6.0, bottom: 6.0, right: 50.0),
            child: TextField(
              onTap: () {
                print("text");
              },
              decoration: InputDecoration(
                filled: true,
                hintText: "Search...",
                contentPadding: const EdgeInsets.fromLTRB(12, 22, 12, 14),
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(width: 0, style: BorderStyle.none),
                )
              ),
            ),
          ),
        ),
        // AppBar(
        //   title: SearchBar(
        //     controller: _searchController,
        //   ),
        //   actions: [
        //     IconButton(
        //       icon: Icon(Icons.settings),
        //       tooltip: "Settings",
        //       onPressed: () {
        //         Navigator.of(context).pushNamed("/settings");
        //       },
        //     ),
        //     IconButton(
        //       icon: Icon(Icons.download_rounded),
        //       onPressed: () {
        //         testAPI();
        //       },
        //     )
        //   ],
        // ),
      ],
    );
  }
}