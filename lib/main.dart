import 'package:flutter/material.dart';
import 'package:flutter_catelog/pages/login_page.dart';
import 'package:flutter_catelog/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_catelog/utils/routes.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bringVegetables(thaila: false , rupees: 200);
    return MaterialApp(
     // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primaryColor: Colors.deepPurple),
      darkTheme: ThemeData(
          //brightness: Brightness.dark
        primarySwatch: Colors.red,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/" : (context) => new LoginPage(),
        MyRoutes.homeRoutes : (context) => new HomePage(),
        MyRoutes.loginRoutes : (context) => LoginPage(),
      },
    );
  }

  bringVegetables({@required bool thaila = false , int rupees = 100}){
    //Take cycle
    print("tahila = $thaila rupees = $rupees");

    //Go to sec 15

  }
}
