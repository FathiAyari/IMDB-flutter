import 'package:flutter/material.dart';


class moviePage extends StatefulWidget {


  @override
  _moviePageState createState() => _moviePageState();
}

class _moviePageState extends State<moviePage> {
  @override
  Widget build(BuildContext context) {
    Map arguments =ModalRoute.of(context).settings.arguments;
    String Poster= arguments['Poster'];
    String Title = arguments['Title'];
    return Scaffold(
      backgroundColor: Color(0xFF21222E),
      body: Column(
        children: [
          SizedBox(
            height: 170,
          ),
          Container(

            height: 300,
            width: double.infinity  ,// take the whole space in width
            child: FittedBox( fit: BoxFit.contain ,


                // use the fitted box for the adjustement
                child: Image.network(Poster),


            ),
          )
        ],
      ),
    );
  }
}
