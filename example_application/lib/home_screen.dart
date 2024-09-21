import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: InfoScreen(),
//     );
//   }
// }

class InfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Name: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'Shravan',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 16), 
            Row(
              children: <Widget>[
                Text(
                  'Age: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  '14',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: <Widget>[
                Text(
                  'Fav book: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'Wonder',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            SizedBox(height: 16), 
            Row(
              children: <Widget>[
                Text(
                  'Fav movie: ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  'Avengers Endgame',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
