import 'package:flutter/material.dart';
import 'package:infinite_tab_button/infinite_tab_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<TabButtonModel> _buttonList = [
    TabButtonModel("Button 1"),
    TabButtonModel("Button 2"),
    TabButtonModel("Button 3"),
    TabButtonModel("Button 4"),
    TabButtonModel("Button 5"),
    TabButtonModel("Button 6"),
    TabButtonModel("Button 7"),
    TabButtonModel("Button 8"),
    TabButtonModel("Button 9")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[buildInfiniteTabButton()],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  Widget buildInfiniteTabButton() => InfiniteTabButton(
        _buttonList,
        onTap: (index, item) {},
      );
}
