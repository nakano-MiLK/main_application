import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget{
  const SearchResult({Key? key}) : super(key: key);

  //const SearchResult({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Device Search Result'),
      ),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}