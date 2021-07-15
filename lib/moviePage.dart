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
    String imdbRating = arguments['imdbRating'];
    String Genre = arguments['Genre'];
    String Released = arguments['Released'];
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xFF21222E),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            height: 140,
          ),
          Container(

            height: 300,
            width: double.infinity  ,// take the whole space in width
            child: FittedBox( fit: BoxFit.cover ,


                // use the fitted box for the adjustement
                child: Image.network(Poster),


            ),
          ),

          SizedBox(
            height: 140,
          ),
          Text(Title,

            style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),),
          Row(
            children: [
              Icon(Icons.star,
              color: Colors.amber,
              size:30),

              Text(' '+imdbRating.toString(),

                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),




            ],

          ),

          Text('Genre : '+Genre.toString(),

            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),),
          Text('Realesed : '+Released .toString(),

            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),),

        ],
      ),
    );
  }
}


















/*
Padding(
padding: const EdgeInsets.fromLTRB(40, 80, 20, 40),
child: Container(


child: ClipRRect(
borderRadius: BorderRadius.circular(30.0),
child: Image.network(Poster),
)
),
)
*/
