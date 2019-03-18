import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class Dashboard extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
  
}
  
class _MyHomePageState extends State<Dashboard> {
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, 3.0, 0.0, -0.5, -1.0, -2.0];

  Material myChartItems(String title) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Text(title,
                    style:TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20.0
                    ),),
                  ),

                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: new Sparkline(
                      data: data,
                      lineColor: Color(0xffff6101),
                      pointsMode: PointsMode.all,
                      pointSize: 8.0,

                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.menu), onPressed: (){
          //
        }),
        title: Text('statistics'),
        actions: <Widget>[
          IconButton(icon: Icon(
            FontAwesomeIcons.chartLine), onPressed: () {
              //
          })
        ],
      ),
      body: Container(
        color: Color(0xffE5E5E5),
        child: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          
          children: <Widget>[
            myChartItems("Forecast of number of scheduled studies"),
            myChartItems("Number of cards done each day"),
            myChartItems("Time spent for study each day"),
            myChartItems("Correct rate each day"),
          ],
          staggeredTiles: [
            StaggeredTile.extent(4, 250.0),
            StaggeredTile.extent(4, 250.0),
            StaggeredTile.extent(4, 250.0),
            StaggeredTile.extent(4, 250.0),
          ],
        ),
      ),
    );
  }
}