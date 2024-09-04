import 'dart:convert';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_gradient_app_bar/flutter_gradient_app_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var cities = [
      'Mumbai',
      'Delhi',
      'London',
      'New York',
      'Tokyo',
      'Indore',
      'Capetown',
      'Dhaka',
      'Dhar',
      'Jakatra',
      'Moscow'
    ];
    final _random = new Random();
    var city = cities[_random.nextInt(cities.length)];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0), // Set the height to 0
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF3B8EC9), Color(0xFFBCE0EF)],
              ),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
      ),
      body: SafeArea(
        child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF3B8EC9), Color(0xFFBCE0EF)],
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(14, 0, 8, 0),
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                            child: Icon(
                              Icons.search,
                              color: Colors.blue,
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                          )),
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Search $city'),
                      )),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.all(25),
                          margin: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          children: [
                            Image.network(
                              'https://www.bing.com/images/search?view=detailV2&ccid=h1Rch1G9&id=2F6544F235E98887A9DD6696B531974DF0F03A01&thid=OIP.h1Rch1G9M7qenMCe1tHsqAHaHa&mediaurl=https%3A%2F%2Fstatic.vecteezy.com%2Fsystem%2Fresources%2Fpreviews%2F009%2F316%2F966%2Foriginal%2Fweather-icon-logo-illustration-cloud-with-sun-symbol-template-for-graphic-and-web-design-collection-free-vector.jpg&exph=1920&expw=1920&q=weather+logo+image&simid=608024347559028426&FORM=IRPRST&ck=C52E46608ABF3A9AB5D731EC1FCFE8E9&selectedIndex=2&itb=0&cw=1339&ch=635&ajaxhist=0&ajaxserp=0', width: 30, height: 30,),
                            Column(
                              children: [
                                Text('Broken Clouds'),
                                Text('In Indore'),
                              ],
                            ),
                          ],


    ) ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.all(25),
                        child: Text("text"),
                        margin:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.all(25),
                        child: Text('hello'),
                        margin:
                            EdgeInsets.fromLTRB(25, 0, 10, 0)
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.all(25),
                        child: Text(
                          "text hai",
                          style: TextStyle(color: Colors.black),
                        ),
                        margin:
                            EdgeInsets.fromLTRB(10, 0, 25, 0)
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Container(
                  child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:<Widget> [
                    Text("Created By : AaryanJii.Co", style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.w400),),
                  ],
                ),
                  padding: EdgeInsets.all(10),
                )],

            )

        ),
      ),
    );
  }
}
