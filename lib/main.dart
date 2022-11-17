import 'package:flutter/material.dart';
import 'package:task3/intro.dart';

void main() {
  runApp(MaterialApp(home: const MyApp(),),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _Email=TextEditingController();
  TextEditingController _Password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(60),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(backgroundImage: AssetImage('image/owl.jpg'),radius: 50,),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 300),
                child: TextField(controller: _Email,
                  decoration: InputDecoration(
                enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(100),),
                ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 300),
                child: TextField(controller: _Password,
                  decoration: InputDecoration(
                  enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(100),),
                ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 30,),
              Container(height: 50,
                width: 200,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                  color: Colors.blue,
                ),
                child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const intro()),);
                  }, child: Text('login'),
                  style: TextButton.styleFrom(primary: Colors.white),
                ),
              ),
              SizedBox(height: 20,),
              Text('forgot password?'),
            ],
          ),
        ),
      ),
    );
  }
}
