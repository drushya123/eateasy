import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home:MyApp(),
    theme:themedata,
  ));
}
final ThemeData themedata=ThemeData(
  canvasColor: Colors.white,
);


class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ListView(
      padding:EdgeInsets.all(32.0),
      children:<Widget>
    [
       RaisedButton(
        color:Colors.pink,
        child:Text('Credit cards'),
        onPressed:(){
          Navigator.push(context,PageTwo());
        }
       ),

       RaisedButton(
          color:Colors.pink,
          child:Text('Paytm'),
          onPressed:(){
            Navigator.push(context,PageThree());
          }
       ),
       RaisedButton(
        color:Colors.pink,
        child:Text('Amazon Pay'),
        onPressed:(){
          Navigator.push(context,PageFour());
        }
        ),
    ]
         .map(
         (Widget button)=>Container(
        padding:EdgeInsets.symmetric(vertical:8.0),
        child:button,
         ),
        )
       .toList(),
    );

  }
}
class PageTwo extends MaterialPageRoute<Null>{
  PageTwo()
  :super(builder:(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('Credit card Details'),
        elevation :2.0,
          actions:<Widget>[
            IconButton(
              icon:Icon(Icons.close),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ]
      ),
      body:Padding(
        padding:EdgeInsets.all(32.0),
        child:ListView(
           children: <Widget>[
             MaterialButton(

               onPressed: (){
                 Navigator.popUntil(context, ModalRoute.withName(Navigator.defaultRouteName));
               },
               child:Text("Back"),
             ),
           ],


    ),
    ),
    );
  }
  );
}
class PageThree extends MaterialPageRoute<String>{
  PageThree()
      :super(builder:(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title:Text('Paytm Details'),
          elevation :2.0,

        ),
        body:Padding(
            padding:EdgeInsets.all(32.0),
            child:ListView(
              children: <Widget>[
                MaterialButton(
                  child:Text('Back'),
                  onPressed: (){
                    Navigator.pop(
                      context
                    );
                  },
                ),
              ],
            )
        )

    );
  }
  );
}
class PageFour extends MaterialPageRoute<String>{
  PageFour()
      :super(builder:(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title:Text('Amazon Pay details'),
          elevation :2.0,
          actions:<Widget>[
            IconButton(
              icon:Icon(Icons.close),
              onPressed:(){
                Navigator.pop(context);
              },
            ),
          ],
        ),
        body:Padding(
            padding:EdgeInsets.all(32.0),
            child:ListView(
              children: <Widget>[
                MaterialButton(
                  child:Text('Back'),
                  onPressed: (){
                    Navigator.popUntil(
                      context,
                      ModalRoute.withName(Navigator.defaultRouteName),
                    );
                  },
                ),
              ],
            )
        )

    );
  }
  );
}
