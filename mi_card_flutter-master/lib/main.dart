import 'package:flutter/material.dart';

void main() {
  runApp(MyCard());
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[700],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/Deadpool.JPG'),
              backgroundColor: Colors.blueGrey[900],
            ),
            Text(
              "Hector",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
            Text(
              "FULL STACK DEVELOPER",
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 20,
                  color: Colors.teal[100]),
            ),
            SizedBox(
              height: 20,
              width: 150,
              child: Divider(color: Colors.teal[100],),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                  padding: EdgeInsets.all(1),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone_iphone,
                      size: 30,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      "+1 123-456-7890",
                      style: (TextStyle(
                          fontFamily: "SourceSansPro",
                          fontSize: 20,
                          color: Colors.teal[900])),
                    ),
                  )),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: Padding(
                padding: EdgeInsets.all(1),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    size: 30,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    "Hector@yolo.com",
                    style: (TextStyle(
                        fontFamily: "SourceSansPro",
                        fontSize: 20,
                        color: Colors.teal[900])),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.teal,
//         body: Container(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Container(
//                 color: Colors.red,
//                 height: double.infinity,
//                 width: 100,
//               ),
//               Container(
//                 color: Colors.yellow,
//                 height: 100,
//                 width: 100,
//               ),
//               Container(
//                 color: Colors.blue,
//                 height: double.infinity,
//                 width: 100,
//               )
//             ],
//           ),
//         ),
//       ),
//     ));
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blue[200],
//         appBar: AppBar(
//           title: Text("Holi"),
//           centerTitle: true,
//         ),
//         body: SafeArea(
//           child: Column(
//             children: <Widget>[
//               Row(
//                 children: <Widget>[
//                   Container(
//                     color: Colors.amber,
//                     child: Text("Hola q hace1"),
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     child: Text("Hola q hace1"),
//                   ),
//                   Container(
//                     color: Colors.amber,
//                     child: Text("Hola q hace1"),
//                   )
//                 ],
//               ),
//               Container(
//                 color: Colors.amber,
//                 child: Text("Hola q hace"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
