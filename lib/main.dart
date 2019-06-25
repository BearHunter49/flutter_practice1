import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'cupertino_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: ChangePage(),
//      home: RandomWords(),
    );
  }
}

class ChangePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('첫번째 페이지'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('화면 이동'), onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => CupertinoPage()));
        }
        ),
      ),

    );
  }
}



//class RandomWordsState extends State<RandomWords> {
//  final List<WordPair> _suggestions = <WordPair>[];
//  final TextStyle _biggerFont = const TextStyle(fontSize: 18);
//
//  @override
//  Widget build(BuildContext context) {
////    final WordPair wordPair = WordPair.random();
////    return Text(wordPair.asPascalCase);
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Startup Name Generator'),
//      ),
//      body: _buildSuggestions(),
//    );
//  }
//
//  Widget _buildSuggestions() {
//    return ListView.builder(
//        padding: const EdgeInsets.all(16),
//        itemBuilder: (BuildContext _context, int i) {
//          if (i.isOdd) {
//            return Divider();
//          }
//          final int index = i ~/ 2;
//          if (index >= _suggestions.length) {
//            _suggestions.addAll(generateWordPairs().take(10));
//          }
//          return _buildRow(_suggestions[index]);
//        });
//  }
//
//  Widget _buildRow(WordPair pair) {
//    return ListTile(
//      title: Text(
//        pair.asPascalCase,
//        style: _biggerFont,
//      ),
//    );
//  }
//}

//class RandomWords extends StatefulWidget {
//  @override
//  RandomWordsState createState() => RandomWordsState();
//}
