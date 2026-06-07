import 'package:flutter/material.dart';
import '/screens/home.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({super.key});

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(
          builder: (context) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Información",
                  style: TextStyle(fontSize: 80, color: Colors.blueGrey),
                ),
                SizedBox(height: 50),
                Text(
                  "Más caro",
                  style: TextStyle(fontSize: 40, color: Colors.blueGrey),
                ),
                Text("$mostExpensiveName: $mostExpensiveNum", style: TextStyle(fontSize: 30),),
                SizedBox(height: 20),
                Text(
                  "Más barato",
                  style: TextStyle(fontSize: 40, color: Colors.blueGrey),
                ),
                Text("$cheapestName: $cheapestNum", style: TextStyle(fontSize: 30),),
                SizedBox(height: 20),
                Text(
                  "Mayor cantidad",
                  style: TextStyle(fontSize: 40, color: Colors.blueGrey),
                ),Text("$mostQuantityName: $mostQuantityNum", style: TextStyle(fontSize: 30),),
                SizedBox(height: 20),
                Text(
                  "Menor cantidad",
                  style: TextStyle(fontSize: 40, color: Colors.blueGrey),
                ),
                Text("$leastQuantityName: $leastQuantityNum", style: TextStyle(fontSize: 30),),
                SizedBox(height: 20),
                Text(
                  "Precio promedio",
                  style: TextStyle(fontSize: 40, color: Colors.blueGrey),
                ),Text("$avgPrice", style: TextStyle(fontSize: 30),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
