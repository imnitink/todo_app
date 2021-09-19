import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:todo_app/screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: SplashScrennPage(),
    );
  }
}

class SplashScrennPage extends StatefulWidget {
  const SplashScrennPage({Key key}) : super(key: key);

  @override
  _SplashScrennPageState createState() => _SplashScrennPageState();
}

class _SplashScrennPageState extends State<SplashScrennPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body:new Builder(
          builder: (BuildContext context) {
            return new SplashScreen(
                seconds: 2,
                navigateAfterSeconds: new Homepage(),
                title: new Text('',style: TextStyle(fontSize: 32.0),),
                loaderColor: Colors.blueGrey[100],
                image: Image(image:AssetImage('assets/images/logo-2.png')),
                backgroundColor: Colors.red,
                styleTextUnderTheLoader: new TextStyle(color: Colors.grey[500]),
                photoSize: MediaQuery.of(context).size.width
              /*onClick: ()=>print("Flutter Egypt"),*/
            );
          }),);
  }
}



