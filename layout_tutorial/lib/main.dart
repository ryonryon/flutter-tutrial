import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  final kichen = Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.kitchen, color: Colors.green[500]),
        Text('PREP:'),
        Text('25 min'),
      ],
    )
  );

  final restaurant = Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.restaurant, color: Colors.green[500]),
        Text('FEEDS:'),
        Text('4-6'),
      ],
    )
  );

  final timer = Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.timer, color: Colors.green[500]),
        Text('COOK:'),
        Text('1 hr'),
      ],
    )
  );

  final padding = Container(
    decoration: BoxDecoration(
      color: Colors.black26
    ),
    child: Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(50.0),
          child: Text('Paddint test!'),
        ),

        Padding(
          padding: EdgeInsets.all(50.0),
          child: Text('Padding test2!')
        )
      ],
    ),
  );
  
  // Widget _buildDecoratedImage() => Expanded(
  //     child: Container(
  //       decoration: BoxDecoration(
  //         border: Border.all(width: 10, color: Colors.black38),
  //         borderRadius: const BorderRadius.all(const Radius.circular(8)),
  //       ),
  //       margin: const EdgeInsets.all(4),
  //       child: Image.asset('assets/lgtm1.jpg'),
  //     ),
  //   );

  Widget _listViews() => ListView(
    children: <Widget>[
      _tile('title', Icons.theaters),
      _tile('title', Icons.theaters),
      _tile('title', Icons.theaters),
      _tile('title', Icons.theaters),
      _tile('title', Icons.theaters),
      _tile('title', Icons.theaters),
      _tile('title', Icons.theaters),
      _tile('title', Icons.theaters),
    ],
  );

  ListTile _tile(String title, IconData icon) => ListTile(
    title: Text(title,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20
      ),
    ),
    leading: Icon(
      icon,
      color: Colors.blue[500],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout tutorial',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout'),
        ),
        body: _listViews(),

        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: <Widget>[
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         kichen,
        //         timer,
        //         restaurant,
        //       ],
        //     ),
        //   ],
        // )
      )
    );
  }
}