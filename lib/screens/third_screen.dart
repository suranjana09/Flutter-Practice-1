import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:osin/api/apiclient.dart';
import 'package:osin/screens/fourth_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int count = 0;

Future displayitem() async{
  final prefs = await SharedPreferences.getInstance();
  final List<String>? carts = prefs.getStringList('cart');
  for (final crt in carts!){  
     return crt;
  }
  
  //  print(carts.toString());
  //  return carts;
}




  //  @override
  // void initState() {
  //   displayitem();
  //   super.initState();
  // }

  void incrementCount() {
    setState(() {
      count++;
    });
  }
    void decrementCount() {
    setState(() {
      count --;
    });
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Your Cart',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 18, right: 10),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: [
              FutureBuilder(
                future: displayitem(),
                builder:(context, snapshot) {
                  //  print(snapshot.data);
                  if (snapshot.hasData == null){

                    return CircularProgressIndicator();
                  }
                  else {
                    return 
                   Container(
                height: MediaQuery.of(context).size.height * 0.5,
                child: ListView.separated(
                  shrinkWrap: true,
                  primary: true,
                  // physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                        height: 100,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: const DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.shopify.com/s/files/1/1503/3226/collections/starter_packs.jpg?v=1667052878'))),
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'PRS 35TH Anniversary C24',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          width: 19,
                                        ),
                                        IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.close),
                                          iconSize: 16,
                                        )
                                      ],
                                    ),
                                    const Text(
                                      'Qty:1',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 14),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                         Text(
                                          // snapshot.data,
                                          'IDR 50.000.000',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        const SizedBox(
                                          width: 42,
                                        ),
                                       
                                        Container(
                                          height: 25,
                                           width: 25,
                                        
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              border: Border.all(width: 0.5)),
                                          child: FloatingActionButton(
                                              backgroundColor: Colors.white,
                                              
                                              elevation: 0,
                                              child: const Icon(
                                                Icons.remove,
                                                size: 9,
                                                color: Colors.black,
                                              ),
                                              onPressed: () {
                                                 decrementCount(); 
                                                  
                                              },
                                              heroTag: Text('btn3',)),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text('${count}'),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        
                                        Container(
                                          height: 25,
                                          width: 25,
                                          child: FloatingActionButton(
                                              elevation: 0,
                                              backgroundColor: Colors.black,
                                              child: const Icon(Icons.add,
                                                  size: 9),
                                              onPressed: () {
                                                incrementCount();
                                              },
                                              heroTag: Text('btn4',)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ));
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: 4,
                ),
              );
                  }
                  
                }),
             
              Container(
                height: 280,
              
                child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Subtotal Items(3)',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 55,
                              ),
                              Expanded(
                                child: Text(
                                  'IDR 65.120.00',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Delivery Fee',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 55,
                              ),
                              Expanded(
                                child: Text(
                                  'IDR 1.000',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: const [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Total',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Expanded(
                                child: Text(
                                  'IDR 65.121.00.000',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 22,
                          ),
                          SizedBox(
                            height: 40,
                            width: 300,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (ctx) {
                                  return FourthScreen();
                                }));
                              },
                              child: const Text('Go to Payment'),
                              // style: ButtonStyle(
                              //     backgroundColor:
                              //         MaterialStateProperty.all(
                              //             Colors.black),
                              //             ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          )
                        ],
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}
