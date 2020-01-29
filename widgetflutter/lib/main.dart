import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Melbourne Cricket Ground'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.melbournestars.com.au/-/media/melbournestarscomau/Images/News/MCG_Fixture.ashx?mw=1200'),
                      fit: BoxFit.contain),
                )),
            Text(
              "Melbourne Cricket Ground",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.all(15),
            child: Text(
              "The Melbourne Cricket Ground, also known simply as 'The G', is an Australian sports stadium located in Yarra Park, Melbourne, Victoria. Founded and managed by the Melbourne Cricket Club, it is the largest stadium in the Southern Hemisphere, the 10th largest globally, and the largest cricket ground by capacity.",
              style: TextStyle(fontSize: 20),
            ),),
            SizedBox(height: 10),
            InkWell(child: Text('Location',
            style:TextStyle(fontSize: 20, color: Colors.blueAccent)
            ),
            onTap: ()=> launch('https://www.google.com/maps/place/Melbourne+Cricket+Ground/@-37.8199626,144.9812553,17z/data=!3m2!4b1!5s0x6ad6429557771e3f:0xc642908b98443b60!4m5!3m4!1s0x6ad64295571a6281:0x63575fd647a0b2f9!8m2!3d-37.8199669!4d144.9834493'),),
            Text(
              '\nVikalp Chakravorty',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
