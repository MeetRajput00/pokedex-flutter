// ignore_for_file: unnecessary_this, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'pokemonInfoCard.dart';
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
      title: 'Pokedex',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: SearchAppBar(),
    );
  }
}

class SearchAppBar extends StatefulWidget {
  @override
  _SearchAppBarState createState() => new _SearchAppBarState();
}

class _SearchAppBarState extends State<SearchAppBar> {
  Widget appBarTitle = new Text("Pokedex", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),);
  Icon actionIcon = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title:appBarTitle,
        actions: <Widget>[
          new IconButton(icon: actionIcon,onPressed:(){
          setState(() {
                     if ( this.actionIcon.icon == Icons.search){
                      this.actionIcon = new Icon(Icons.close);
                      this.appBarTitle = new TextField(
                        style: new TextStyle(
                          color: Colors.black,

                        ),
                        decoration: new InputDecoration(
                          prefixIcon: new Icon(Icons.search,color: Colors.black),
                          hintText: "Search...",
                          hintStyle: new TextStyle(color: Colors.black)
                        ),
                      );}
                      else {
                        this.actionIcon = new Icon(Icons.search);
                        this.appBarTitle = new Text("Pokedex", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),);
                      }


                    });
        } ,),]
      ),
      body: ListView(
        children: [
          Pokemon_Info_Card(),
          Pokemon_Info_Card(),
          Pokemon_Info_Card()
        ],
      ),
    );
  }
}