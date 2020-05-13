import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class UserFrontPage extends StatefulWidget {
  @override
  _UserFrontPageState createState() => _UserFrontPageState();
}

class _UserFrontPageState extends State<UserFrontPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text('COVID-19 TRACKER')),
        body: new FlutterMap(
            options: new MapOptions(
                center: new LatLng(35.22, -101.83), minZoom: 5.0),
            layers: [
              new TileLayerOptions(
                  urlTemplate:
                  "https://api.mapbox.com/styles/v1/alanhenry0221/ck9wq4ri80olr1ipejj0wttm7/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiYWxhbmhlbnJ5MDIyMSIsImEiOiJjazl3cG13d2QwYmN4M2h1aGQzdmZlbXBuIn0.xBx-N1b8FsJeH4DYa5SV0g",
                  additionalOptions: {
                    'accessToken':
                    'pk.eyJ1IjoiYWxhbmhlbnJ5MDIyMSIsImEiOiJjazl3cG13d2QwYmN4M2h1aGQzdmZlbXBuIn0.xBx-N1b8FsJeH4DYa5SV0g',
                    'style': 'mapbox://styles/alanhenry0221/ck9wq4ri80olr1ipejj0wttm7'
                  }),
              new MarkerLayerOptions(markers: [
                new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: new LatLng(35.215, -101.825),
                    builder: (context) => new Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.blue,
                        iconSize: 45.0,
                        onPressed: () {
                          print('Marker tapped');
                        },
                      ),
                    ))
              ])
            ]));
  }
}
