import 'package:flutter/material.dart';

class ExampleApplication extends StatelessWidget {
  const ExampleApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Appbar"),
        backgroundColor: const Color.fromARGB(255, 145, 205, 232),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.car_crash),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.pedal_bike),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.logout),
          )
        ],

        leading: const Icon(Icons.home),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, size: 50,),
              Icon(Icons.star, size: 50,),
              Icon(Icons.star, size: 50,)
            ],
          
          ),

          Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.star, size: 50,),
                  Icon(Icons.star, size: 50,),
                  Icon(Icons.star, size: 50,)
                ],
              
              ),
            ],
          ),
        ],
      ),
    );
  }
}
