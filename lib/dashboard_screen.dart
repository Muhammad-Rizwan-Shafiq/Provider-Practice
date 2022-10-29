import 'package:flutter/material.dart';

class DasboardScreen extends StatelessWidget {
  const DasboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List shoes=[
      {
        "company_name":"Adidas",
        "quantity":"2",
        "price":"500"
      },
      {
        "company_name":"Puma",
        "quantity":"5",
        "price":"200"
      },
      {
        "company_name":"Jodans",
        "quantity":"100",
        "price":"900"
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Checking"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [


Container(
  height: 210,
  width: double.infinity,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: shoes.length,
      itemBuilder: (context,int index){
        return Container(
          height: 195,
          width: 195,
          // color: Colors.pink,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(

                    bottomRight: Radius.circular(20.0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(

                          bottomRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Text("\$ : ${shoes[index]['price']}"),
                    )
                  ],
                ),

              ),
              Positioned(
                left: 50,
                bottom: 40,
                child: Image.asset(
                  "assets/images/shoe.png",
                  height: 160,
                  width: 160,
                ),)
            ],
          ),
        );
      }),
),


        ],
      ),
    );
  }
}
