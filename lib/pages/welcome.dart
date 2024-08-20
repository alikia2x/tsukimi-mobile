import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                'Welcome to',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Image(
                    image: AssetImage("assets/img/tsukimi.png"),
                    height: 36,
                  ),
                ),
                Text(
                  'tsukimi',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 18, 20, 6),
              child: Text(
                'Your all-in-one Fediverse client. Join this decentralized social network now!',
                softWrap: true,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
