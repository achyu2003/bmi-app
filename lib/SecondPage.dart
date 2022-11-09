import 'package:flutter/material.dart';
import 'package:flutter_dev/SecondPage.dart';
import 'package:flutter_dev/main.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Argument{
  final double bmi;
  Argument(this.bmi);
}


class SecondPage extends StatefulWidget {




  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as Argument;

    return Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
            title: Text("Calculation"),
    ),
    body: Column(

    //mainAxisAlignment: MainAxisAlignment.start,
    children: [
      TextButton(onPressed: (){
        Navigator.pop(context);
      },
          child: Column(

            children: [
              Text("Calculate ${args.bmi}",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple

              ),

              ),
              Container(
                child: Column(
                  children: [
                    Text("Please rate our BMI calculator", style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.green
                    ),
                    )
                  ],
                ),

              ),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              )




            ],

          )


      )

    ]
    ),

    );
}
}




