import 'package:flutter/material.dart';
import 'package:realestate/screens/filter.dart';
import 'package:realestate/screens/recommendation.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final _pageCOntroller = PageController(viewportFraction: 0.877);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child:
         Icon(
          Icons.tune_sharp,
          color: Colors.black,
        ),
        backgroundColor: Colors.grey[400],
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => filterView(),
              ));
        },
      ),
      // bottomNavigationBar: BottomAppBar(
      //   notchMargin: 5,
      //   shape: CircularNotchedRectangle(),
      //   color: Colors.grey[300],
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     mainAxisSize: MainAxisSize.max,
      //     children: [
      //       Padding(
      //         padding: EdgeInsets.only(left: 10),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.max,
      //           children: [Icon(Icons.home_outlined,color: Colors.black),
      //           Text("Home",style: TextStyle(color: Colors.black),)],
      //         ),
      //       ), Padding(
      //         padding: EdgeInsets.only(right: 20,top: 10,bottom: 10),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.max,
      //           children: [Icon(Icons.chat_bubble_outline_sharp,color: Colors.black),
      //           Text("Messages",style: TextStyle(color: Colors.black),)],
      //         ),
      //       ), Padding(
      //         padding: EdgeInsets.only(left: 20,top: 10,bottom: 10),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.max,
      //           children: [Icon(Icons.favorite_border_rounded,color: Colors.black),
      //           Text("Favorite",style: TextStyle(color: Colors.black),)],
      //         ),
      //       ), Padding(
      //         padding: EdgeInsets.only(right: 10),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.max,
      //           children: [Icon(Icons.account_circle_outlined,color: Colors.black),
      //           Text("Account",style: TextStyle(color: Colors.black),)],
      //         ),
      //       )
      //     ],
      //   ),
      // ),
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                height: 57,
                margin: EdgeInsets.only(left: 28, right: 28, top: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 57,
                      width: 57,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.grey[300],
                      ),
                      child: Icon(Icons.menu),
                    ),
                    Container(
                      height: 57,
                      width: 57,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.grey[300],
                      ),
                      child: Icon(Icons.search),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 48, left: 28),
                child: Text(
                  "Find The\nPerfect Place\nTo Live",
                  style: TextStyle(fontSize: 35.5, fontWeight: FontWeight.w800),
                ),
              ),
              Container(
                height: 30,
                margin: EdgeInsets.only(left: 14, top: 28),
                child: Container(
                  margin: EdgeInsets.only(
                    left: 14,
                    right: 14,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.grey[300]),
                  child: const Text(
                    "Reconmmends For You",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Container(
                height: 218,
                margin: EdgeInsets.only(top: 16),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageCOntroller,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      child: recomend_containers(),
                      margin: EdgeInsets.only(right: 28),
                      width: 333,
                      height: 218,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                    )
                  ],
                ),
              ),
              Container(
                height: 30,
                margin: EdgeInsets.only(left: 14, top: 28),
                child: Container(
                    margin: EdgeInsets.only(
                      left: 14,
                      right: 14,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Colors.grey[300]),
                    child: const Text(
                      "This Might Help you",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[300]),
                        width: 100,
                        child: Column(
                          children: [
                            Icon(
                              Icons.person_pin_circle_outlined,
                              size: 70,
                              color: Colors.black,
                            ),
                            Text("Find Agent")
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Icon(
                              Icons.map_rounded,
                              size: 70,
                              color: Colors.black,
                            ),
                            Text("Maps")
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Icon(
                              Icons.house_rounded,
                              size: 70,
                              color: Colors.black,
                            ),
                            Text("Home loan")
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Icon(
                              Icons.newspaper_rounded,
                              size: 70,
                              color: Colors.black,
                            ),
                            Text("News")
                          ],
                        ),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
