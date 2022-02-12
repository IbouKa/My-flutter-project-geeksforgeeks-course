import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Skeleton Text',
        home: Scaffold(
          backgroundColor: Colors.black87,
          appBar: AppBar(
            title: const Text("Skeleton Text"),
            centerTitle: true,
          ),
          body: ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        color: Colors.white),
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SkeletonAnimation(
                            gradientColor: Colors.greenAccent,
                            shimmerColor: Colors.amber,
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(color: Colors.grey),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5, left: 15),
                                child: SkeletonAnimation(
                                  child: Container(
                                    height: 15,
                                    width:
                                        MediaQuery.of(context).size.width * 0.6,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.6),
                                        color: Colors.grey),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 5.0),
                                  child: SkeletonAnimation(
                                    child: Container(
                                      width: 60,
                                      height: 13,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          color: Colors.grey[300]),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ));
  }
}
