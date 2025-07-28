
import 'package:flutter/material.dart';
class ExtendTheGreetingApp extends StatelessWidget {
  const ExtendTheGreetingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Greeting App",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.teal[50],
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello, World!",style: TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),),
            SizedBox(height: 20),
            Text("Welcome to Flutter!",style: TextStyle(
              color: Colors.black,
              fontSize: 20
            ),),
            SizedBox(height: 10),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0AycURuCy0MgjRrIpQMCDVfvqEWTSOI4IEHfVtdswgCNFCNzbnVe87CabEi7ky0R7L2k&usqp=CAU"),
            SizedBox(height: 10),
            SizedBox(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green
                ),
                  onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Button Pressed!"))
                  );
                  }, child: Text("Press Me",style: TextStyle(
                color: Colors.black,fontSize: 15
              ),)),
            )
          ],
        ),
      ) ,

    );
  }
}
