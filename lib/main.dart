import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Food Recipe'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    var screenData = MediaQuery.of(context).size;
    final double screenWidth = screenData.width;
    final double screenHeight = screenData.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                width: screenWidth,
                child: Image.asset("images/yemekresim.jpeg")
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: screenWidth / 8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        print("Liked!");
                        },
                      child: Yazi("Like", screenWidth / 15),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: screenWidth / 8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        print("Comment!");
                      },
                      child: Yazi("Comment", screenWidth / 15),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(screenHeight / 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Meatballs",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth / 20,
                    ),
                  ),
                  Row(
                    children: [
                      Yazi("Suitable for cooking on the grill.", screenWidth / 22),
                      Spacer(),
                      Yazi("August 8th", screenWidth / 25),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(screenHeight / 100),
              child: Yazi("In a large bowl, combine the ground meat, breadcrumbs, Parmesan cheese, parsley, garlic, egg, milk, salt, pepper, oregano, and basil. Mix well until all the ingredients are evenly distributed."
                  "Roll the mixture into small, bite-sized balls (about 1 to 1.5 inches in diameter)."
                  "Heat the olive oil in a large skillet over medium heat."
                  "Add the meatballs to the skillet and cook, turning occasionally, until they are browned on all sides and cooked through (about 8-10 minutes)."
                  "Remove the meatballs from the skillet and place them on a plate lined with paper towels to drain any excess oil."
                  "Serving suggestion: Serve these meatballs with your favorite marinara sauce over pasta, in a sub sandwich, or as an appetizer with a dipping sauce."
                  , screenWidth / 22),
            ),
          ],
        ),
      ),

    );
  }
}

class Yazi extends StatelessWidget {

  late var contents;
  late var textSize;

  Yazi(this.contents, this.textSize);

  @override
  Widget build(BuildContext context) {
    return Text(contents, style: TextStyle(fontSize: textSize),);
  }
}

