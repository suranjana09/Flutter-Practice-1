import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:osin/api/apiclient.dart';
import 'package:osin/screens/first_screen.dart';
import 'package:osin/screens/new_third.dart';
import 'package:osin/screens/third_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondScreen extends StatefulWidget {
  final  prod;
  
  
  const SecondScreen({super.key,required this.prod, });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  // Future getProductDetails() async{
  //   var response = BaseClient().get('/posts');
  //   return response;
  // }
  
  
int count = 0;

void incrementCount(){
  setState((){
    count ++;

  });
}

void decrementCount(){
  setState((){
    count --;

  });
}
 addCart() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    Map <String, dynamic> map1 = {
      "product" : widget.prod ,   
      "quantity" : 2
    };
    // print(map1);
    
    List<String>? cart = [];
    if (prefs.getStringList('cart') != null){
      // print("not null");
      cart = prefs.getStringList('cart') ;
    }

    cart!.add(map1.toString());
    // print(cart.toString());
    // print("-=-------==");
    await prefs.setStringList('cart', cart);
    //  print(prefs.getStringList('cart'));
                                        
 }



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
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
          backgroundColor: Colors.transparent,
          title: const Text(
            'Product Details',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                )),
          ],
          centerTitle: true,
          elevation: 0,
        ),
        extendBody: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 250,
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      decoration: BoxDecoration(
                          image:  DecorationImage(
                              image: NetworkImage(
                                   '${widget.prod['thumbnail']}'.toString(), ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '${widget.prod['title']}'.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child:  Text(
                          '\$ ${widget.prod['price']}'.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: const Text(
                        'Product Description',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child:  Text(
                          '${widget.prod['description']}'.toString(),
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.normal),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: const Text(
                        'Product Specification',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: RichText(
                              text: const TextSpan(
                                  text: '\u2022 ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Body Type: ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    TextSpan(
                                      text: 'Solid Body',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ]),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: RichText(
                              text: const TextSpan(
                                  text: '\u2022 ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Body Shape: ',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    TextSpan(
                                      text: 'Custom 24',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: RichText(
                                text: const TextSpan(
                                    text: '\u2022 ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Body Material: ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      TextSpan(
                                        text: 'Mahogany',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ]),
                              ),
                            ),
                            Expanded(
                              child: RichText(
                                text: const TextSpan(
                                    text: '\u2022 ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'No of Strings: ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      TextSpan(
                                        text: '6',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ]),
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 130,
                      width: 500,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        elevation: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Row(
                                  children: [
                                    // Container(
                                    //     height: 25,
                                    //     width: 25,
                                    //     decoration: BoxDecoration(
                                    //         borderRadius:
                                    //             BorderRadius.circular(13),
                                    //         border: Border.all(width: 1)),
                                    //     child: IconButton(
                                    //       onPressed: () {},
                                    //       icon: Icon(Icons.remove),
                                    //       iconSize: 9,
                                    //     )),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border: Border.all(width: 0.5)),
                                      child: FloatingActionButton(
                                        heroTag:Text ('btn1'),
                                          elevation: 0,
                                          backgroundColor: Colors.white,
                                          child: const Icon(
                                            Icons.remove,
                                            size: 9,
                                            color: Colors.black,
                                          ),
                                          onPressed: () {
                                            decrementCount();
                                          }),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                     Text('${count}'),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    // Container(
                                    //   height: 25,
                                    //   width: 25,
                                    //   decoration: BoxDecoration(
                                    //       borderRadius:
                                    //           BorderRadius.circular(13),
                                    //       border: Border.all(width: 1)),
                                    //   child: IconButton(
                                    //     onPressed: () {},
                                    //     icon: Icon(Icons.add),
                                    //     iconSize: 9,
                                    //   ),
                                    // ),
                                    Container(
                                      height: 30,
                                      width: 30,
                                      child: FloatingActionButton(
                                        heroTag: Text('btn2'),
                                          elevation: 0,
                                          backgroundColor: Colors.black,
                                          child: const Icon(Icons.add, size: 9),
                                          onPressed: () {
                                            incrementCount();
                                          }),
                                    ),
                                    const SizedBox(
                                      width: 80,
                                    ),
                                    const Text(
                                      'IDR 55.000.000',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              SizedBox(
                                height: 40,
                                width: 300,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    addCart();
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (ctx) {
                                      return const ThirdScreen();
                                    }));
                                  },
                                  child: const Text('Add to cart'),
                                  // style: ButtonStyle(
                                  //     backgroundColor:
                                  //         MaterialStateProperty.all(
                                  //             Colors.black)),
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10))),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ));
  }
}
