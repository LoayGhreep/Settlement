import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Settlement Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.black,
    backgroundColor: Colors.white,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );
  bool _vis1 = false;
  bool _vis2 = false;
  bool _vis3 = false;
  bool _vis4 = false;
  String _img = 'lib/Assets/a.gif';
  void setvis1() {
    setState(() {
      _vis1 = true;
    });
  }
  void setvis2() { // To settle
    setState(() {
      _vis2 = true;
      _vis3 = false;
      _vis4 = true;
      _img='lib/Assets/a.gif';
    });
  }
  void setvis3() { // To show details
    setState(() {
      _vis3 = true;
      _vis2 = false;
      _vis4 = true;
      _img='lib/Assets/c.jpeg';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(
          children: [
            const Divider(),
            Center(
              child: InkWell (
                onTap: () {setvis1();}, // Handle your callback.
                splashColor: Colors.white.withOpacity(0.5),
                child: Ink(
                  height: MediaQuery.of(context).size.width*0.15,
                  width: MediaQuery.of(context).size.width*0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(500),
                    boxShadow: const [
                      BoxShadow(
                        blurStyle: BlurStyle.normal,
                        color: Colors.black,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                      child: Stack(
                        children: <Widget>[
                          Text(
                            'Settlement',
                            textScaleFactor: 2.8,
                            style: TextStyle(
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 2
                                ..color = Colors.orange,
                            ),
                          ),
                          // Solid text as fill.
                          const Text(
                            'Settlement',
                            textScaleFactor: 2.8,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                  ),
                ),
              ),
            ),
            const Divider(),
            Visibility(
              visible: _vis1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                        Text('Last Settlement Date:'),
                        const Divider(),
                        Text('Last Settlement:'),
                          const Divider(),
                        Text('Current Revenue:'),
                          const Divider(),
                        Text('Settlement (15%):'),
                          const Divider(),
                          const Divider(),
                          Center(
                            child: InkWell (
                              onTap: () {setvis2();}, // Handle your callback.
                              splashColor: Colors.white.withOpacity(0.5),
                              child: Ink(
                                height: MediaQuery.of(context).size.width*0.08,
                                width: MediaQuery.of(context).size.width*0.4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(500),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurStyle: BlurStyle.normal,
                                      color: Colors.black,
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(0, 0), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Center(
                                    child: Stack(
                                      children: <Widget>[
                                        Text(
                                          'Settle (Pay)',
                                          textScaleFactor: 1.5,
                                          style: TextStyle(
                                            foreground: Paint()
                                              ..style = PaintingStyle.stroke
                                              ..strokeWidth = 2
                                              ..color = Colors.orange,
                                          ),
                                        ),
                                        // Solid text as fill.
                                        const Text(
                                          'Settle (Pay)',
                                          textScaleFactor: 1.5,
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                              ),
                            ),
                          ),
                        ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('10/1/2023'),
                        const Divider(),
                        Text('2000 EGP'),
                        const Divider(),
                        Text('18000 EGP'),
                        const Divider(),
                        Text('2700 EGP'),
                        const Divider(),
                        const Divider(),
                        Center(
                          child: InkWell (
                            onTap: () {setvis3();}, // Handle your callback.
                            splashColor: Colors.white.withOpacity(0.5),
                            child: Ink(
                              height: MediaQuery.of(context).size.width*0.08,
                              width: MediaQuery.of(context).size.width*0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500),
                                boxShadow: const [
                                  BoxShadow(
                                    blurStyle: BlurStyle.normal,
                                    color: Colors.black,
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(0, 0), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Center(
                                  child: Stack(
                                    children: <Widget>[
                                      Text(
                                        'Details',
                                        textScaleFactor: 1.5,
                                        style: TextStyle(
                                          foreground: Paint()
                                            ..style = PaintingStyle.stroke
                                            ..strokeWidth = 2
                                            ..color = Colors.orange,
                                        ),
                                      ),
                                      // Solid text as fill.
                                      const Text(
                                        'Details',
                                        textScaleFactor: 1.5,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
                visible: _vis4,
                child: Image.asset(_img,height: MediaQuery.of(context).size.width,)
            ),
            Visibility(
                visible: _vis2,
                child: Image.asset('lib/Assets/b.gif',height: MediaQuery.of(context).size.width*0.1,)
            ),
          ],
        ),
      ),
    );
  }
}
