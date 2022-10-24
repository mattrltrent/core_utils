import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      mobile: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Mobile view", style: TextStyle(fontSize: 40)),
              const SizedBox(height: 30),
              Text("18210912 formated = ${largeNumberFormatter(18210912)}", style: const TextStyle(fontSize: 40)),
              const SizedBox(height: 30),
              Text("is 14 plural? = ${isPlural(14)}", style: const TextStyle(fontSize: 40)),
              const SizedBox(height: 30),
              Text("5 with number postfix = 5${numberPostfix(5)}", style: const TextStyle(fontSize: 40))
            ],
          ),
        ),
      ),
      tablet: const Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: Text("Tablet view", style: TextStyle(fontSize: 40)),
        ),
      ),
      desktop: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(
          child: Container(
            height: heightFrac(context, .5),
            color: Colors.redAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Desktop view", style: TextStyle(fontSize: 40)),
                SizedBox(height: 30),
                Text("Red rectagle height: heightFrac(context, 1/2))", style: TextStyle(fontSize: 40)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
