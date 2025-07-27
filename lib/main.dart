import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,

        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/jpeg/burger.jpeg'),
            fit: BoxFit.cover,
          ),
        ),

        child: Padding(
          padding: EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                "Brand",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                "Savor the convenience of restaurant-quality meals, delivered promptly.",
                style: TextStyle(color: Colors.grey.shade500),
              ),
              SizedBox(height: 24),
              GestureDetector(
                onDoubleTap: () {},
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.09,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusGeometry.circular(35),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      "Next",
                      style: TextStyle(color: Colors.black, fontSize: 32),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
