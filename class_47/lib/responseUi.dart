import 'package:flutter/material.dart';

class ResponseUi extends StatefulWidget {
  const ResponseUi({Key? key}) : super(key: key);

  @override
  _ResponseUiState createState() => _ResponseUiState();
}

class _ResponseUiState extends State<ResponseUi> {

  final imageUrl = 'https://images.unsplash.com/photo-1636108840454-8fbe394c7837?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aXBob25lJTIwMTN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Response Ui'),
      ),

      // body: Center(
      //   child: Container(
      //     height: 200,
      //     width: 200,
      //     color: Colors.blue,
      //     child: FittedBox(
      //       fit: BoxFit.fitHeight,
      //       child: Image.network(imageUrl),
      //     ),
      //   ),
      // ),

      // body: AspectRatio(
      //   aspectRatio: 1,
      //   child: Container(
      //     // height: 200,
      //     // width: 200,
      //     color: Colors.blue,
      //   ),
      // ),
    );
  }
}
