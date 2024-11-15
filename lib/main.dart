import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Size mq = MediaQuery.sizeOf(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent.shade400,
          title: Text('Need Blood', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          actions: [
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: () { }, icon: Icon(Icons.add),  color: Colors.white,),
          )],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(maxRadius: mq.height * 0.10,child: Icon(Icons.bloodtype_outlined,size: mq.height * 0.10, color: Colors.deepOrange,),
                backgroundColor: Colors.grey.shade600,
              ),
              SizedBox(height: mq.height * 0.01,),
              Text('Donate Blood', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)
            ],
          ),
      ),
    )
    );
  }
}
