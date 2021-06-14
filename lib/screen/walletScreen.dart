import 'package:flutter/material.dart';
import '../screen/bitcoinScreen.dart';
import 'package:flutter_svg/flutter_svg.dart';


class WalletScreen extends StatefulWidget {
  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  String _chosenValue;

  String _chosenHigherValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
            Icons.menu,
          color: Colors.grey[500],
        ),
        title: Center(
          child: Text(
              "Wallets",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Icon(
              Icons.account_balance_wallet,
            color: Colors.grey[500],
          ),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.25,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                     // padding: EdgeInsets.all(20.0),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xfff4c5767),
                      ),
                      child: Icon(
                          Icons.account_balance_wallet,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Total Wallet Balance",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12.0
                      ),
                    ),
                    SizedBox(width: 50.0,),
                    DropdownButton<String>(
                      iconEnabledColor: Colors.grey,
                      value: _chosenValue,
                        items: <String>[
                          "USD",
                          "Rupee"
                        ].map<DropdownMenuItem<String>>((String value){
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                                value,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 10.0,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          );
                        }).toList(),
                      hint: Text(
                        "USD",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      onChanged: (String value){
                        setState(() {
                          _chosenValue = value;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    Text(
                        "\$39.584",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0,

                      ),
                    ),
                    SizedBox(
                      width: 130.0,
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 8.0,top: 4.0),
                      height: 23.0,
                      width: 63.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xfff17ae63)
                      ),
                      child: Text(
                        "\+ 3.55\%",
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                Text(
                  "7.251332 BTC",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.0
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              children: [
                Text(
                  "Sorted by higher \%",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(
                  width: 150.0,
                ),
                DropdownButton<String>(
                  iconEnabledColor: Colors.grey,
                  value: _chosenHigherValue,
                  items: <String>[
                    "USD",
                    "Rupee"
                  ].map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                          value,
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10.0,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                    );
                  }).toList(),
                  hint: Text(
                    "24H",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  onChanged: (String value){
                    setState(() {
                      _chosenHigherValue = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.41,

            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (BuildContext context, int index){
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> BitcoinScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0,left: 15.0, right: 15.0),
                    padding: EdgeInsets.all(10.0),
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                            "images/bitcoin.svg",
                           width: 40,
                          height: 40,
                          color: Colors.orangeAccent,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "3.529020 BTC",
                                style: TextStyle(
                                  fontSize: 13.0
                                ),
                              ),
                              Text(
                                "\$ 5.441",
                                style: TextStyle(
                                    fontSize: 11.0,
                                  color: Colors.green
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 80.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "\$ 19.153",
                                style: TextStyle(
                                    fontSize: 13.0
                                ),
                              ),
                              Text(
                                "\+ 4.32\%",
                                style: TextStyle(
                                    fontSize: 11.0,
                                    color: Colors.green
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },

            ),
          ),
        ],
      ),
    );
  }
}
