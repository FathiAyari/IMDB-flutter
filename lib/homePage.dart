import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return
Scaffold(
  backgroundColor: Color(0xFF21222E),
  body: Column(

    children: [
      SizedBox(
        height: 100 ,
      ),
      Container(
        child :Image.network('https://m.media-amazon.com/images/G/01/imdb/images/social/imdb_logo._CB410901634_.png'),
        width: 200,
        height: 180,
       /* child: Image.network('https://m.media-amazon.com/images/G/01/imdb/images/social/imdb_logo._CB410901634_.png',)*/

      ),
      SizedBox(
        height: 50 ,
      ),
      Text('IMDb  is an online database of information related to films, television programs, home videos.',
        textAlign: TextAlign.center,
        style: TextStyle(
        color: Colors.white,
        fontSize: 18,

      ),),
      SizedBox(
        height: 50 ,
      ),
      Row(
        children: [
          Expanded(child: TextFormField(style:
            TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
          decoration:InputDecoration(
            hintText: 'Movie name',
            hintStyle: TextStyle(
              color: Colors.grey,
            ),



          )
            ,))
        ],
      )
    ],
  ),




);

  }
}
/* appBar:AppBar(
          centerTitle: true,
            title: Text('hey all ',
            style: TextStyle(
                fontWeight:FontWeight.w500
            ),),
        ),
      );*/