import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/providers/favourite_provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite Screen"),
      ),
      body: Column(
        children: [
          Consumer<FavouriteProvider>(builder: (context,value, child){
            return Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context,int index){
                    return ListTile(
                      onTap: (){
                        if(value.selectedItem.contains(index)){
                          value.removeValue(index);
                        }else{
                          value.addValue(index);
                        }
                      },
                      title: Text("Item ${index}"),
                      trailing: value.selectedItem.contains(index) ? Icon(Icons.favorite) : Icon(Icons.favorite_border_outlined),
                    );
                  }),
            );
          }),

        ],
      ),
    );
  }
}
