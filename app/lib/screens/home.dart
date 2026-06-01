import 'package:flutter/material.dart';
import '/clases/class_product.dart';

class HomeScreen extends StatefulWidget {
  final String usuario;

  HomeScreen({super.key, required this.usuario});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

TextEditingController productNameController = TextEditingController();
TextEditingController productDescriptionController = TextEditingController();
TextEditingController productPriceController = TextEditingController();
TextEditingController productQuantityController = TextEditingController();

class _HomeScreenState extends State<HomeScreen> {
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
                  "Ingrese su producto",
                  style: TextStyle(fontSize: 40, color: Colors.blueGrey),
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: 500,
                  child: TextField(
                    controller: productNameController,
                    decoration: InputDecoration(
                      labelText: "Nombre",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 500,
                  child: TextField(
                    controller: productDescriptionController,
                    decoration: InputDecoration(
                      labelText: "Descripción",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 500,
                  child: TextField(
                    controller: productPriceController,
                    decoration: InputDecoration(
                      labelText: "Precio",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 500,
                  child: TextField(
                    controller: productQuantityController,
                    decoration: InputDecoration(
                      labelText: "Cantidad",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {                         
                        },
                        child: Text("Agregar"),
                      ),
                    ),
                    SizedBox(width: 50),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Calcular"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
