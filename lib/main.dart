import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: app(),
    );
  }
}

Widget app() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://thumbs.dreamstime.com/z/red-roped-theater-curtains-16559719.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[title(), icon()],
      ),
    ),
  );
}

Widget title() {
  return Text(
    "Bienvenido al catálogo de películas",
    style: TextStyle(
      color: Colors.white,
      fontSize: 44.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget icon() {
  return Icon(Icons.local_movies, size: 150, color: Colors.white);
}