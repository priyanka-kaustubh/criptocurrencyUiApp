import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class BitcoinScreen extends StatefulWidget {
  @override
  _BitcoinScreenState createState() => _BitcoinScreenState();
}

class _BitcoinScreenState extends State<BitcoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
            Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        title: Center(
          child: Text(
            "Bitcoin Wallet",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
          ),
          ),
        ),
        actions: [
          Icon(
            Icons.more_vert,
            color: Colors.grey,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [
            Container(
              height: 160.0,
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        "images/bitcoin.svg",
                        color: Colors.orangeAccent,
                        width: 40.0,
                        height: 40.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width* 0.08,
                      ),
                      Text(
                        "Bitcoin",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width* 0.45,
                      ),
                      Text(
                        "BTC",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "3.529020 BTC",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Text(
                          "\$19.153 USD",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                            color: Colors.grey
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 150.0),
                          padding: EdgeInsets.only(top: 3.0, left: 8.0),
                          height: 20.0,
                          width: 55.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xfffed205c),
                          ),
                          child: Text(
                            "\-2.32\%",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.only(left:10.0,right: 10.0),
              child: GestureDetector(
                onTap: (){

                },

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Day",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[500]
                      ),
                    ),
                    Text(
                      "Week",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[500]
                      ),
                    ),
                    Text(
                      "Month",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[500]
                      ),
                    ),
                    Text(
                      "Year",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[500]
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: null,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.45,
                  height: 100,
                  margin: EdgeInsets.only(left:10.0),
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        "images/bitcoin.svg",
                        color: Colors.blueAccent,
                        width: 40.0,
                        height: 40.0,
                      ),
                      Text(
                        "Buy BTC",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.45,
                  height: 100,
                  margin: EdgeInsets.only(right:10.0),
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        "images/bitcoin.svg",
                        color: Colors.pink,
                        width: 40.0,
                        height: 40.0,
                      ),
                      Text(
                        "Sell BTC",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
