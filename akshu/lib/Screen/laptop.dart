import 'package:flutter/material.dart';
import 'package:swiggy/Responsive/constaint.dart';
import 'package:swiggy/utility/my_box.dart';
import 'package:swiggy/utility/my_tile.dart';

class LaptopRes extends StatelessWidget {
  const LaptopRes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefColor,
      appBar: myAppbar,
      body: Row(
        children: [
          //open drawer
          myDrawer,

          //rest of body
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // 4 box
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return MyBox();
                      },
                    ),
                  ),
                ),

                Expanded(
                    child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return MyTile();
                  },
                )),
                //tile below it
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
