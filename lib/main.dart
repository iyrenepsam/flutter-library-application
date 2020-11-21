





import 'package:flutter/material.dart';

void main()=>runApp(LibraryApp());


class LibraryApp extends StatelessWidget {
  TextEditingController getBookName=TextEditingController();
  TextEditingController getAuthor=TextEditingController();
  TextEditingController getDistribution=TextEditingController();
  TextEditingController getPrice=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Text(" BOOK WORLD "),
        ),
        body: Container(
          padding: EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: getBookName,
                decoration: InputDecoration(
                  hintText: " BOOK NAME ",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15.5),
              TextField(
                controller: getAuthor,
                decoration: InputDecoration(
                  hintText: "AUTHOR",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15.5),
              TextField(
                controller: getDistribution,
                decoration: InputDecoration(
                  hintText: "DISTRIBUTION",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15.5),
              TextField(
                controller: getPrice,
                decoration: InputDecoration(
                  hintText: "PRICE",
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 15.5),

              RaisedButton(onPressed: (){


                String getBkName=getBookName.text;
                String getBkAuthor=getAuthor.text;
                String getBkDistribution=getDistribution.text;
                String getBKPrice=getPrice.text;

                print(getBkName);
                print(getBkAuthor);
                print(getBkDistribution);
                print(getBKPrice);


              },

                color: Colors.amber,
              child: Text("SUBMIT"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
