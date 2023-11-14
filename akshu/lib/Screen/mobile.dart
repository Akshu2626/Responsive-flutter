import 'package:flutter/material.dart';
import 'package:swiggy/Responsive/constaint.dart';
import 'package:swiggy/utility/my_box.dart';
import 'package:swiggy/utility/my_tile.dart';

class MobileRes extends StatelessWidget {
  const MobileRes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      backgroundColor: myDefColor,
      drawer: myDrawer,
      body: Column(
        children: [
          // 4 box
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return MyBox();
                },
              ),
            ),
          ),

          Expanded(child: ListView.builder(itemCount: 5,
            itemBuilder: (context, index) {
              return MyTile();
            },
          ))
          //tile below it
        ],
      ),
    );
  }
}
