import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.purple[900]),
      home: RandomWords()
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final _randomWordPairs = <WordPair>[]; // defined as a list

  Widget _buildList() {
    // If using itemBuilder, include `.builder` after ListView
    return ListView.builder( 
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, item) {
        if(item.isOdd) return Divider();
        
        final index = item ~/ 2; // ~/ divide an integer

        if (index >= _randomWordPairs.length) {
          // Use generateWordPairs from english_words
          _randomWordPairs.addAll(generateWordPairs().take(10)); 
        }

        return _buildRow(_randomWordPairs[index]); 
      }
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase, 
        style: TextStyle(fontSize: 18.0)
      )
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildList(),
      appBar: AppBar(
        title: Text('Wordpair Generator')
      )
    );
  }
}