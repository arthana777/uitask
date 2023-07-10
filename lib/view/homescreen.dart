import 'package:flutter/material.dart';

import 'categories.dart';
import 'gridview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> items = ['all', 'mens', 'womens', 'kids'];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          CircleAvatar(
                            radius: 24,
                            backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bWFuJTIwaW1hZ2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'HI,ARIF',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              // Handle favorite button tap
                            },
                          ),
                          IconButton(
                            icon: const Icon(Icons.lock),
                            onPressed: () {
                              // Handle share button tap
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.02),
                  Container(
                    width: screenSize.width * 0.8,
                    child: Image(
                      image: NetworkImage(
                        'https://static.vecteezy.com/system/resources/thumbnails/007/229/427/small/welcome-calligraphic-inscription-with-smooth-lines-vector.jpg',
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: screenSize.height * 0.05,
                        width: screenSize.width * 0.25,
                        child:  Text(
                          'categories'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: MediaQuery.of(context).size.width * 5,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Center(
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                items.length,
                                    (index) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: MediaQuery.of(context).size.height * 0.05,
                                    width: MediaQuery.of(context).size.width * 0.2,
                                    decoration: BoxDecoration(color: Colors.white,
                                        borderRadius: BorderRadius.circular(20)
                                        ,boxShadow: [
                                          BoxShadow(
                                              blurStyle: BlurStyle.outer,
                                              blurRadius: 1
                                          )
                                        ]),
                                    child: Center(child: Text(items[index].toUpperCase(),style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold
                                    ),),),
                                  ),
                                )),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.8,
                    child: ProductGrid(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
