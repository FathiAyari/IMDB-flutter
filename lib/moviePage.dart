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
    String Country = arguments['Country'];

    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xFF21222E)),
      backgroundColor: Color(0xFF21222E),
      body: SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                  height: MediaQuery.of(context).size.height *0.5,


                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(Poster,
                      fit: BoxFit.cover ,),
                  )
              ),
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

            Text('Country : '+Country .toString(),

              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),),

          ],
        ),
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
