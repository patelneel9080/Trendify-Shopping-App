import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Container(
        color: Colors.deepPurpleAccent,
        height: size.height,
        width: size.width,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 45,
                width: size.width/1.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32)
                ),
                child: SearchBar(
                  leading: Icon(Icons.search,color: Colors.black,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
