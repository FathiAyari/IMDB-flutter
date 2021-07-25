import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
var searchController =TextEditingController(); //get the content of the text field



    callImdbApi()async{


    var url = Uri.parse('https://www.omdbapi.com/?t=${searchController.text}&apikey=9604cb6f '); //concatunation of the searchController with the api
    var response = await http.get(url);
    var mybody=jsonDecode(response.body);
    searchController.clear();// clear the value of the field after clicking the search button

    Navigator.pushNamed(context, '/movieDetails',arguments: {
    "Poster" :mybody['Poster'],
      "Title" :mybody['Title'],
      "imdbRating" :mybody['imdbRating'],
      "Genre" :mybody['Genre'],
      "Released" :mybody['Released'],
      "Country" :mybody['Country'],

    },
        );


        }
  @override
  Widget build(BuildContext context) {
    return
Scaffold(
  

  backgroundColor: Color(0xFF21222E),
  body: SafeArea(
    child: Column(
     crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [






      Container(
        child :Image.asset('assets/images/imdb.png'),
        width: 100,
        height: 100,


      ),

      SizedBox(
        height: MediaQuery.of(context).size.height *0.02,
      ),








      Container(
        child: Text('IMDb  is an online database of information related to films.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,

          ),),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height *0.03,
      ),










      Row(
        children: [
          Form(
            key: _formKey,

            child: Expanded(


                child: TextFormField(style: TextStyle(
                  color: Colors.white,// change the color of the content value of the textfield
                ),

                    controller:searchController ,

                    decoration:InputDecoration(


                        hintText: 'Movie name', //Plceholder
                        hintStyle: TextStyle(
                            color: Colors.grey,// the color of hintText
                            fontSize: 18

                        ),
                        fillColor: Color(0xFF2a2b37),// the color of the inside box field
                        filled: true,


                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20) , //borderradius
                        )




                    ),
                    validator:(value){
                      if(value.isEmpty){ // validation function

                        return ' Field cant be empty  ';
                      }else return null;

                    }
                )),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 50,
            child: ElevatedButton.icon(onPressed: (){
              if(_formKey.currentState.validate()){
                callImdbApi();





              };


            },

              style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),

                 /* style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red)
                          )
                      )
                  )*/

              ),
              label: Text('Search'),
              icon:Icon(Icons.search),),
          ),




        ],

      ),
      Spacer(),



      Flexible(

          child: Container(


            alignment: Alignment.bottomCenter,


            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,


              children: [



                Text('Created by Fathi AYARI',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),)

              ],
            ),
          )),















    ],
    ),
  ));






  }
}















