

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  double rating =0;
  double rating2=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
              fit: BoxFit.fill,
              width: window.physicalSize.width,
              height: window.physicalSize.height,
              image:NetworkImage("https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg")

          ),

          Positioned(
            top: 100,
              left: 20,
              right: 20,
              child:Container(
            height: 700,
            color: Colors.white,
                child: Column(
                  children: [
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,right: 15,left: 15),
                      child: Text("Mr Mohammad John Due",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RatingBar.builder(
                      minRating: 1,
                      itemSize: 25,
                      allowHalfRating: true,

                      itemBuilder: (BuildContext context, _) =>
                          Icon(Icons.star,color: Colors.amber,),
                      onRatingUpdate: (rating) =>setState(() {
                        this.rating=rating;
                      }),

                    ),
                    SizedBox(width: 12,),
                    Text("$rating",style: TextStyle(fontSize: 22),)
                  ],
                ),
                    SizedBox(height: 15,),
                    Divider(height: 9,),
                    SizedBox(height: 22,),
                    Text("Rate Customer",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                    SizedBox(height: 15,),


                    RatingBar.builder(
                      minRating: 1,
                      itemSize: 35,
                      itemBuilder: (BuildContext context, _) =>
                          Icon(Icons.star,color: Colors.amber,),
                      onRatingUpdate: (rating) =>setState(() {
                        this.rating2=rating;
                      }),

                    ),
                    SizedBox(height: 15,),
                    Divider(height: 9,),
                    SizedBox(height: 15,),

                    Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("Give a Compliment?",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    SizedBox(height: 12,),

                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CoolButton(color1: Colors.orange,
                              color2: Colors.orange,
                              text: "Excellent Service",textColor: Colors.black,),
                          SizedBox(width: 15,),
                          CoolButton(color1: Colors.white12,
                            color2: Colors.white12,
                            text: "Great Conversation",textColor: Colors.black,),
                        ],
                      ),
                    ),
                    SizedBox(height: 12,),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CoolButton(color1: Colors.white24,
                            color2: Colors.white24,
                            text: "Good Behavior",textColor: Colors.black,),
                          SizedBox(width: 15,),
                          CoolButton(color1: Colors.white12,
                            color2: Colors.white12,
                            text: "Others",textColor: Colors.black,),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text("Comments",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                    SizedBox(height: 12,),
                    Card(
                        color: Colors.white12,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: TextField(
                            maxLines: 4, //or null
                            decoration: InputDecoration.collapsed(hintText: "Given your comment here"),
                          ),
                        )
                    ),
                    SizedBox(height: 6,),

                    TextButton(
                      onPressed: (){},
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Center(child: Text("Submit",style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                    )





                  ],
                ),

          )),
          Positioned(
            top: 40,
              left: 200,
              child:  Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://media.istockphoto.com/photos/male-lion-resting-on-a-rock-picture-id1333977253?b=1&k=20&m=1333977253&s=170667a&w=0&h=q_EqYl_GqFCR1XmF_AK91YRFDapwAClOoc2fZbsnmr4=",

                    ),
                      radius: 45,
                  ), //CircleAvatar
                ), //CircleAvatar
              ),
          ),
           ],


      ),

    );
  }
}
class CoolButton extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String text;
  Color ?textColor;
  IconData ? icon;
  CoolButton({required this.color1,required this.color2,required this.text,this.textColor,this.icon});

  @override
  Widget build(BuildContext context) {
    var _mediaquery=MediaQuery.of(context);
    return Container(

      decoration: BoxDecoration(

        // boxShadow: [
        // BoxShadow(color: Colors.grey,
        // spreadRadius: 1,
        // blurRadius: 2,
        // offset: Offset(2,2)
        // )
        // ],
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5),

          gradient: LinearGradient(
              colors: [color1,color2]
          ),

      ),
      child: TextButton(
        onPressed: (){},
        child: Container(
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Icon(Icons.warning_sharp,color: Colors.white,),

              Center(
                child: Text(text,
                  style: TextStyle(fontWeight: FontWeight.bold,color:textColor,fontSize: 18),),
              ),
              // Icon(Icons.cancel,color: Colors.white,)
            ],
          ),
        ),
      ),

    );
  }
}

