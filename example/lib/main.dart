import 'package:flutter/material.dart';
import 'package:image_ink_well/image_ink_well.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('ImageInkWell'),
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ImageInkWell(
                    onPressed: () {
                      print('onPressed');
                    },
                    width: 300,
                    height: 180,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1547651196-4bd31258de69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                    splashColor: Color(0x32ff0000),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundedRectangleImageInkWell(
                    onPressed: () {
                      print('onPressed');
                    },
                    width: 300,
                    height: 150,
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(20),
                        topRight: const Radius.circular(20),
                        bottomLeft: const Radius.circular(20)),
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1547332184-070705bccbd3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CircleImageInkWell(
                    onPressed: () {
                      print('onPressed');
                    },
                    size: 200,
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1547651619-238e04d07889?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                    splashColor: Colors.white24,
                  )
                ]),
          )),
    );
  }
}
