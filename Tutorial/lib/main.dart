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
  final List<Map<String, dynamic>> list = [
    {
      'title': 'Starwar Episode IV',
      'subtitle': 'A New Hope',
      'imageUrl':
          'https://images-na.ssl-images-amazon.com/images/I/81aA7hEEykL.jpg',
      'price': 12.99,
    },
    {
      'title': 'Starwar Episode V',
      'subtitle': 'The Empire Strikes Back',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/3/3c/SW_-_Empire_Strikes_Back.jpg',
      'price': 13.99,
    },
    {
      'title': 'Starwar Episode VI',
      'subtitle': 'Return of the Jedi',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/b/b2/ReturnOfTheJediPoster1983.jpg',
      'price': 14.99,
    },
    {
      'title': 'Starwar Episode I',
      'subtitle': 'The Phantom Menace',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/4/40/Star_Wars_Phantom_Menace_poster.jpg',
      'price': 15.99,
    },
    {
      'title': 'Starwar Episode II',
      'subtitle': 'Attack of the Clones',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/3/32/Star_Wars_-_Episode_II_Attack_of_the_Clones_%28movie_poster%29.jpg',
      'price': 16.99,
    },
    {
      'title': 'Starwar Episode III',
      'subtitle': 'Revenge of the Sith',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/thumb/9/93/Star_Wars_Episode_III_Revenge_of_the_Sith_poster.jpg/220px-Star_Wars_Episode_III_Revenge_of_the_Sith_poster.jpg',
      'price': 17.99,
    },
    {
      'title': 'Starwar Episode VII',
      'subtitle': 'The Force Awakens',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/a/a2/Star_Wars_The_Force_Awakens_Theatrical_Poster.jpg',
      'price': 18.99,
    },
    {
      'title': 'Starwar Episode VIII',
      'subtitle': 'The Last Jedi',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/7/7f/Star_Wars_The_Last_Jedi.jpg',
      'price': 19.99,
    },
    {
      'title': 'Starwar Episode IX',
      'subtitle': 'The Rise of Skywalker',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/a/af/Star_Wars_The_Rise_of_Skywalker_poster.jpg',
      'price': 24.99,
    },
    {
      'title': 'Rogue One',
      'subtitle': 'A Star Wars Story',
      'imageUrl': 'http://f.ptcdn.info/688/047/000/oho9v1rxi63ssf8YWXG-o.jpg',
      'price': 21.99,
    },
    {
      'title': 'Solo',
      'subtitle': 'A Star Wars Story',
      'imageUrl':
          'https://upload.wikimedia.org/wikipedia/en/5/54/Solo_A_Star_Wars_Story_poster.jpg',
      'price': 14.99,
    },
  ];

  @override
  Widget build(BuildContext context) {
    double totalPrice = 0.0;
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
            trailing: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text('\$' + list[index]['price'].toString()),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    totalPrice += list[index]['price'];
                    print(totalPrice);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    totalPrice -= list[index]['price'];
                    print(totalPrice);
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
