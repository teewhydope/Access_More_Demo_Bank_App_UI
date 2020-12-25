import 'package:access_bank/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SliderWidget extends StatelessWidget {
  final sliders = ImageSlider;
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.grey,
      height: 220,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            height: 30,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                FlatButton(
                  child: Text(
                    'More',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 170,
            width: double.infinity,
            child: Swiper(
              autoplay: true,
              autoplayDelay: 4000,
              //duration: 4000,
              pagination: SwiperPagination(),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  //height: 120,
                  //width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      sliders[index].images,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              itemCount: sliders.length,
              viewportFraction: 0.9,
              scale: 0.9,
            ),
          ),
        ],
      ),
    );
  }
}
