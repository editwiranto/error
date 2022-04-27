import 'package:flutter/material.dart';
import 'PageIcon/icon.dart';
import 'PageIcon/NumberScreen.dart';
import 'PageIcon/webview.dart';

void main() {
  runApp(MaterialApp(home: HomePage(), routes: <String, WidgetBuilder>{
    "/PageCardIcon": (BuildContext context) => IconCard(),
    "/NumberScreen": (BuildContext context) =>
        NumberScreen(title: "Page Number Screen"),
    "/a": (BuildContext context) => WebViewPage(),
  }));
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[200],
          title: Center(child: Text("Niomic Flutter")),
          leading: Icon(Icons.home),
          actions: <Widget>[Icon(Icons.search), Icon(Icons.abc_sharp)],
        ),
        body: Column(children: <Widget>[
          Padding(padding: EdgeInsets.all(20.0)),
          Center(child: Text("Niomic")),
          TextWellcome(),
          RaisedButton(
            child: Text("Page CardIcon"),
            onPressed: () {
              Navigator.of(context).pushNamed("/PageCardIcon");
            },
          ),
          RaisedButton(
            child: Text("Page NumberScreen"),
            onPressed: () {
              Navigator.of(context).pushNamed("/NumberScreen");
            },
          ),
          RaisedButton(
            child: Text("Page Web View"),
            onPressed: () {
              Navigator.of(context).pushNamed("/a");
            },
          ),
          // NumberScreen(),
        ])
        // Image(
        //     image: NetworkImage(
        //         "https://images.unsplash.com/photo-1569226022944-7c948d846270?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=600&q=60"),
        //     height: 100.0,
        //     width: 100.0)

        //     TextField(
        //   obscureText: true,
        //   maxLength: 10,
        //   decoration: InputDecoration(
        //       hintText: "Username",
        //       labelText: "Good Luck",
        //       border: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(20.0))),
        // )

        // RaisedButton(
        //     color: Colors.black,
        //     child: Text("Flutter",
        //         style: TextStyle(color: Colors.white, fontSize: 20.0)),
        //     onPressed: () {
        //       print("Selamat datang di Flutter");
        //     })

        );
  }
}
