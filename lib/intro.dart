import 'package:flutter/material.dart';
class intro extends StatefulWidget {
  const intro({Key? key}) : super(key: key);

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blue,
    body: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            CircleAvatar(backgroundImage: AssetImage('lib/image/harry.jpg'),
              radius: 70,
            ),
            SizedBox(height: 35,),
            Text('Welcome Alucard',style: TextStyle(color: Colors.white,fontSize: 30),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Text('Loren ipsum dolor sit amet,consectetur adipiscing elit.Donec hendredrit condementum mauris id tempor,prasent eu commodo lacus.praesent eget mi sed libero eleifend'),
            ),
          ],
        ),
      ),
    )
    );
  }
}
