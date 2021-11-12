import 'package:flutter/material.dart';

void main() {
  runApp(LearningBabyApp());
}

class LearningBabyApp extends StatelessWidget {
  const LearningBabyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange.shade50,
        appBar: AppBar(
          title: Text('Learning Baby'),
          backgroundColor: Color.fromRGBO(254, 104, 69, 100.0),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: LearningPage(),
          ),
        ),
      ),
    );
  }
}

class LearningPage extends StatefulWidget {
  const LearningPage({Key? key}) : super(key: key);

  @override
  _LearningPageState createState() => _LearningPageState();
}

class _LearningPageState extends State<LearningPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 30, 10, 0.0),
          child: Center(
            child: Text(
              'Animal Name Display',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.indigo,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: SizedBox(
            width: 250.0,
            height: 250.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('assets/images/tiger.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Card(
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      print('Card tapped.');
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('assets/images/elephant.png'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
