import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_example_flutter/new_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("Image Example"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(height: 30),
            Image.asset("assets/images/logo.png",width: 200,height: 200,),
            SizedBox(height: 30),
            Text("Flutter Logo",style: TextStyle(
              color: Colors.blue,
              fontSize: 40,
              fontWeight: FontWeight.bold

            ),),
            SizedBox(height: 20),
            Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/Muhammad_Yunus_at_the_UNGA79_-_2024_%28cropped%29.jpg/220px-Muhammad_Yunus_at_the_UNGA79_-_2024_%28cropped%29.jpg",
              height: 200,width: 200,),
            Text("Dr Muhammad Yunus",style: TextStyle(
                color: Colors.amber,
                fontSize: 20,
                fontWeight: FontWeight.bold

            ),),

            ElevatedButton(
                onPressed: (){
                  Fluttertoast.showToast(msg: "Button has been clicked");
                  //this is for homePage to new_page
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPage()));

                  },
                child: Text("Click"))

          ],
        ),
      ),
    );
  }
}
