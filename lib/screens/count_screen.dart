import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/providers/count_provider.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({Key? key}) : super(key: key);

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Count Screen"),
      ),
      body: Consumer<CountProvider>(builder: (context,value,child){
        return Center(
          child: Text(
            "${value.count}",
            style: TextStyle(fontSize: 50),
          ),
        );
      },),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          countProvider.setCount();
        },
      ),
    );
  }
}
