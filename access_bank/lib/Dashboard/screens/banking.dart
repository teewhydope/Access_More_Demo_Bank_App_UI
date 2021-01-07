import 'package:access_bank/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class BankingScreen extends StatelessWidget {
  final bankingOptions = BankingOptions;
  final decorationBorderRadius = BorderRadius.circular(6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 30),
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).primaryColor.withOpacity(0.5),
                    Theme.of(context).primaryColor,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Swiper(
                      pagination: SwiperPagination(),
                      //itemHeight: MediaQuery.of(context).size.height * 0.3,
                      autoplay: false,
                      itemCount: 4,
                      itemBuilder: (context, index) => Container(
                        color: Colors.transparent,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 25, horizontal: 15),
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'CURRENT ACC. - INDIVIDUAL',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.white),
                                    ),
                                  ),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        '1234567890',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.white),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'AVAILABLE BALANCE',
                                style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                              Text(
                                '₦ 100000000.00',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.14,
                    color: Colors.transparent,
                    child: GridView(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 15),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 3 / 2,
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: decorationBorderRadius,
                            color: Colors.white24,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: decorationBorderRadius,
                            color: Colors.white24,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: decorationBorderRadius,
                            color: Colors.white24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   color: Colors.grey,
            //   height: MediaQuery.of(context).size.height * 0.5,
            // ),
            Flexible(
              child: ListView.builder(
                itemCount: bankingOptions.length,
                itemBuilder: (context, index) => Column(
                  children: [
                    ListTile(
                      leading: Text(
                        bankingOptions[index].labels,
                        style: TextStyle(fontSize: 16),
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.blue[50],
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Divider(
                      // color: Colors.grey,
                      thickness: 1,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
