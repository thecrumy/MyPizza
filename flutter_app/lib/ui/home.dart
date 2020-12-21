import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
       child:Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top:40.0, left:10.0),
            color: Colors.deepOrangeAccent,
            child: Column(children: <Widget>[
            Row(children: <Widget>[
              Expanded(child:Text("Marghertia", 
              textDirection: TextDirection.ltr,
              style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.none,
                    // font family
                    // font weight
                  ),
              )),
              Expanded(child:Text("Tomato, Mozz, Basil", 
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    // font family
                    // font weight
                  ),
                  ))
            ],
            ),
             Row(children: <Widget>[
              Expanded(child:Text("Marinara", 
              textDirection: TextDirection.ltr,
              style: TextStyle(
                    fontSize: 30.0,
                    decoration: TextDecoration.none,
                    // font
                    // fontweight
              ),
              )),
              Expanded(child:Text("Tomato, Garlic", 
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    // font fam
                    // font weight
                  ),
                  ))
            ],
            ),
            //  END OF THE EXPANDED SECTION
            /// X
            PizzaImageWidget(),
            ],
        )
        )
    );
    }
}

class PizzaImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAssest = AssetImage('images/pizza1.png');
    Image image = Image(image: pizzaAssest, width: 400.0, height: 400.0,);
    return Container(child: image);
  }

}