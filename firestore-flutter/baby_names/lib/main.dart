import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final dummySnapshot = [
  {"name": "Filip", "votes": 15},
  {"name": "Abraham", "votes": 14},
  {"name": "Richard", "votes": 11},
  {"name": "Ike", "votes": 10},
  {"name": "Justin", "votes": 1},
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "baby name",
        home: MyHomePage(),
      );
}

class MyHomePage extends StatefulWidget {
  _MyHomePaage createState() => _MyHomePaage();
}

class _MyHomePaage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Baby Name Votes"),
        ),
        body: _buildBody(context),
      );

  Widget _buildBody(BuildContext context) => StreamBuilder<QuerySnapshot>(
        stream: Firestore.instance.collection('baby').snapshots(),
        builder: (context, snapshot) => snapshot.hasData
            ? _buildList(context, snapshot.data.documents)
            : LinearProgressIndicator(),
      );

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) =>
      ListView(
        padding: const EdgeInsets.only(top: 20.0),
        children:
            snapshot.map((name) => _buildListItem(context, name)).toList(),
      );

  Widget _buildListItem(BuildContext context, DocumentSnapshot name) {
    final record = Record.fromSnapshot(name);

    return Padding(
      key: ValueKey(record.name),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text(record.name),
          trailing: Text(record.votes.toString()),
          onTap: () => Firestore.instance.runTransaction((transaction) async {
                final freshSnapshot = await transaction.get(record.reference);
                final fresh = Record.fromSnapshot(freshSnapshot);

                await transaction
                    .update(record.reference, {'votes': fresh.votes + 1});
              }),
        ),
      ),
    );
  }
}

class Record {
  final String name;
  final int votes;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['name'] != null),
        assert(map['votes'] != null),
        name = map['name'],
        votes = map['votes'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$votes>";
}
