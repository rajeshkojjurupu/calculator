import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calculator(),
    );
  }
}

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  Widget calcbutton(String btntxt,Color btncolor, Color txtcolor){
    return
     ElevatedButton(onPressed: (){
    },
    style: ElevatedButton.styleFrom(
      fixedSize: Size(70, 70),
      shape: CircleBorder(),
      primary: btncolor,
    ),
    child: Text(btntxt,style: TextStyle(fontSize: 35,color: txtcolor),)
    );


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text("calculator",style: TextStyle(fontWeight:FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 25),),
          backgroundColor: Colors.blueAccent,
        centerTitle: true,

      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // SingleChildScrollView(
            //   scrollDirection: Axis.vertical,
               Row(
                mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                      Padding(
                          padding: EdgeInsets.all(10.0),
                              child: Text("0",
                            textAlign: TextAlign.left,
                           style: TextStyle(color: Colors.white,fontSize: 100),),

                      )
                  ],
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 calcbutton('AC', Colors.grey, Colors.black)
                ],
            )

          ],
        ),
      ),
    );
  }
}

