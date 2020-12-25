import 'package:flutter/material.dart';

import '../../data.dart';

class Grid extends StatelessWidget {
  final model = ModelList;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      // width: double.infinity,
      child: GridView.builder(
        // physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.85,
          crossAxisCount: 4,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
        ),
        itemCount: model.length,
        itemBuilder: (context, index) => Container(
          color: Colors.white24,
          height: 50,
          width: 30,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            //height: 30,
            // width: double.infinity,

            child: Column(
              children: [
                Icon(
                  model[index].icons,
                  color: Colors.white70,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  model[index].labels,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                  softWrap: true,
                ),
              ],
            ),
          ),
        ),
        //decoration: BoxDecoration(),
      ),
    );
  }
}
