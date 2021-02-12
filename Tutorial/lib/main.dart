import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'All Starwar Episode'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  final List<Map<String, String>> list = [
    {
      'title': 'Starwar Episode IV',
      'subtitle': 'A New Hope',
      'imageUrl':
          'https://images-na.ssl-images-amazon.com/images/I/81aA7hEEykL.jpg',
    },
    {
      'title': 'Starwar Episode V',
      'subtitle': 'The Empire Strikes Back',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/3/3c/SW_-_Empire_Strikes_Back.jpg',
    },
    {
      'title': 'Starwar Episode VI',
      'subtitle': 'Return of the Jedi',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/b/b2/ReturnOfTheJediPoster1983.jpg',
    },
    {
      'title': 'Starwar Episode I',
      'subtitle': 'The Phantom Menace',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/4/40/Star_Wars_Phantom_Menace_poster.jpg',
    },
    {
      'title': 'Starwar Episode II',
      'subtitle': 'Attack of the Clones',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/3/32/Star_Wars_-_Episode_II_Attack_of_the_Clones_%28movie_poster%29.jpg',
    },
    {
      'title': 'Starwar Episode III',
      'subtitle': 'Revenge of the Sith',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/thumb/9/93/Star_Wars_Episode_III_Revenge_of_the_Sith_poster.jpg/220px-Star_Wars_Episode_III_Revenge_of_the_Sith_poster.jpg',
    },
    {
      'title': 'Starwar Episode VII',
      'subtitle': 'The Force Awakens',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/a/a2/Star_Wars_The_Force_Awakens_Theatrical_Poster.jpg',
    },
    {
      'title': 'Starwar Episode VIII',
      'subtitle': 'The Last Jedi',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/7/7f/Star_Wars_The_Last_Jedi.jpg',
    },
    {
      'title': 'Starwar Episode IX',
      'subtitle': 'The Rise of Skywalker',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/a/af/Star_Wars_The_Rise_of_Skywalker_poster.jpg',
    },
    {
      'title': 'Rogue One',
      'subtitle': 'A Star Wars Story',
      'imageUrl': 'http://f.ptcdn.info/688/047/000/oho9v1rxi63ssf8YWXG-o.jpg',
    },
    {
      'title': 'Solo',
      'subtitle': 'A Star Wars Story',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/5/54/Solo_A_Star_Wars_Story_poster.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                list[index]['imageUrl'],
              ),
            ),
            title: Text(
              list[index]['title'],
            ),
            subtitle: Text(
              list[index]['subtitle'],
            ),
            tileColor: Colors.white,
            trailing: Icon(
              Icons.add,
            ),
          );
        },
      ),
    );
  }
}
