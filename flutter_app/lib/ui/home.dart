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
              Expanded(child:Text("Tomato, Mozz, garlic",
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
            OrderButton(),
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
class OrderButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order your Pizza!"),
        color: Colors.lightGreen,
        elevation: 5.0,
        onPressed: () {
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context){
    var alert = AlertDialog(
      title: Text("Order Completed"),
      content: Text("Thanks for your Order"),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) => alert);
  }
}