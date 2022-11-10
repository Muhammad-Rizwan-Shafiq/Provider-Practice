import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/providers/slider_provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    print("builidng");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Slider Screen",
        ),
      ),
      body: Column(
        children: [
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Slider(
              min: 0.0,
              max: 1.0,
              value: value.value,
              onChanged: (val) {
                value.setValue(val);
              },
            );
          }),
          SizedBox(
            height: 20,
          ),
          Consumer<SliderProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green.withOpacity(value.value),
                    ),
                    child: Center(child: Text("Container 1")),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(value.value),
                    ),
                    child: Center(child: Text("Container 2")),
                  ),
                )
              ],
            );
          })
        ],
      ),
    );
  }
}
