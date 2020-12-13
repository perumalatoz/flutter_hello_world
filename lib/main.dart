import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.green,
      primaryColor: Colors.green
    ),
    home: new HelloWorldMain(),
  ));
}


class HelloWorldMain extends StatefulWidget {
  @override
  _HelloWorldMainState createState() => _HelloWorldMainState();
}

class _HelloWorldMainState extends State<HelloWorldMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context){
            return IconButton(icon: Icon(Icons.menu) , onPressed: (){
              Scaffold.of(context).openDrawer();
            });
          },
        ),
      ),
      drawer: Drawer(),
      body: Center(child: Text("Welcome, Hello World", style:
        TextStyle(
          color: Colors.red,
          fontSize: 40,
          fontWeight: FontWeight.w700,
        ))),
    );
  }
}



