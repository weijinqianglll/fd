import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int limagenumber = 1;
  int rimagenumber = 2;
  void imageRandom() {
    setState(() {
      limagenumber = Random().nextInt(6) + 1;
      rimagenumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[600],
      body: SafeArea(
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://images.pexels.com/photos/2422915/pexels-photo-2422915.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: const Text(
                '啦咯了',
                style: TextStyle(
                  fontFamily: 'Lato',
                  color: Colors.white,
                  fontSize: 20, //大小
                  fontWeight: FontWeight.w900, //粗细
                ),
              ),
            ),
            SizedBox(
              height: 40,
              child: Divider(
                color: Colors.red.shade50,
                indent: 80,
                endIndent: 80,
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.phone_solid,
                  color: CupertinoColors.systemTeal,
                ),
                title: Text('18378877598'),
              ),
            ),
            const Card(
              margin: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              child: ListTile(
                leading: Icon(
                  CupertinoIcons.mail_solid,
                  color: CupertinoColors.systemTeal,
                ),
                title: Text('lalole@yeah.net'),
              ),
            ),
            SizedBox(
              height: 200,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        imageRandom();
                      },
                      child: Image.asset('images/sea$limagenumber.jpg'),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        imageRandom();
                      },
                      child: Image.asset('images/sea$rimagenumber.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
