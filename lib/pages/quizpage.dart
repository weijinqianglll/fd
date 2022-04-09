import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scorKeeper = [
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('问卷'),
      ),
      body: Container(
        color: Colors.orange,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: const Text('good的体重是100斤？',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    )),
              ),
            ),
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 80.0, top: 20, right: 80),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    setState(() {
                      scorKeeper.add(Icon(
                        Icons.check,
                        color: Colors.green,
                      ));
                    });
                  },
                  child: Text('正确', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.only(left: 80.0, top: 20, right: 80),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    setState(() {
                      scorKeeper.add(Icon(
                        Icons.close,
                        color: Colors.red,
                      ));
                    });
                  },
                  child: Text('错误', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            Row(
              children: scorKeeper,
            )
          ],
        ),
      ),
    );
  }
}
