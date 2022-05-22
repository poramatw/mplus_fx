import 'package:flutter/material.dart';
import 'package:mplus_fx/screens/accountScreen.dart';
import '../theme/theme.dart';
import '../widgets/drawer.dart';
import 'contract.dart';

class Unitech extends StatefulWidget {
  const Unitech({Key? key}) : super(key: key);

  @override
  State<Unitech> createState() => _CoinMarketCapState();
}

class _CoinMarketCapState extends State<Unitech> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.navigate_before),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Text("UNITECH"),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 50),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 20, 104, 173)),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.attach_money_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        "Secure & Safe Crypto Currency",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 1),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "The",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 38,
                                color: Colors.white),
                          ),
                          Text(
                            " Perfect Balance",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 38,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "between",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 38,
                                color: Colors.white),
                          ),
                          Text(
                            " Forex &",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 38,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Crypto",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 38,
                                color: Colors.blue),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Benefit using Forex/Crypto strategies with",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Color.fromARGB(255, 72, 126, 169)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Hedging. Forex Hedging. Forex Arbitrage.",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Color.fromARGB(255, 72, 126, 169)),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Correlation Trading between crypto & forex.",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                                color: Color.fromARGB(255, 72, 126, 169)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.keyboard_double_arrow_right,
                                color: Colors.white,
                              ),
                              Text(
                                "Buy Now",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: Container(
                        height: 80,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/utclogo.png'),
                                    height: 50,
                                    width: 50,
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "23M+",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "Sold Token",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 182, 212, 237)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 12, 15, 53),
    );
  }
}
