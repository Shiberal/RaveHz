import 'package:flutter/material.dart';
import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/services.dart';

final List<String> entries = <String>['50', '55', '60'];

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return MaterialApp(
      home: Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                title(),
                ListView.separated(
                  padding: const EdgeInsets.all(0),
                  reverse: true,
                  itemCount: entries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 120,
                      child: Center(child: hzselector(entries[index])),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(
                    height: 0,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

Widget title() {
  return SizedBox(
    width: 402.0,
    height: 208.0,
    child: Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 402.0, 208.0),
          size: Size(402.0, 208.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: const Color(0xff463d4d),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(51.0, 22.0, 301.0, 48.0),
          size: Size(402.0, 208.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          fixedHeight: true,
          child: Text(
            'Rave Hz helper',
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 40,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(221.0, 70.0, 153.0, 18.0),
          size: Size(402.0, 208.0),
          pinRight: true,
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'by shiberal',
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 15,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(54.0, 146.0, 295.0, 36.0),
          size: Size(402.0, 208.0),
          pinLeft: true,
          pinRight: true,
          pinBottom: true,
          fixedHeight: true,
          child: Text(
            'This tool is just a GUI to a kernel thing.dont ask me support - shiberal',
            style: TextStyle(
              fontFamily: 'Tahoma',
              fontSize: 15,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
  );
}

Widget hzselector(String text) {
  return SizedBox(
    width: 402.0,
    height: 115.0,
    child: Stack(
      children: [
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 402.0, 115.0),
          size: Size(402.0, 115.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: const Color(0xff463d4d),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(20.0, 31.0, 155.0, 53.0),
          size: Size(402.0, 115.0),
          pinLeft: true,
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            text + 'Hz',
            style: TextStyle(
              fontFamily: 'Segoe UI',
              fontSize: 40,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    ),
  );
}
