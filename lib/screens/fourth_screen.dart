import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  String address = 'home';
  String payment = 'creditcard';
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
          'Checkout',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Container(
          height: 790,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Shipping to',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Home',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
              ),

              // Text(
              //   'Lorem Ipsum is simply dummy text of. Lorem Ipsum has been the industry\'s standard ',
              //   style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300,color: Colors.grey),
              // )

              RadioListTile(
                activeColor: Colors.black,
                title: const Text(
                  'Lorem Ipsum is simply dummy text of. Lorem Ipsum has ',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
                toggleable: false,
                controlAffinity: ListTileControlAffinity.trailing,
                value: 'home',
                groupValue: address,
                onChanged: (value) {
                  setState(() {
                    address = value.toString();
                  });
                },
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Office',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
                ),
              ),

              RadioListTile(
                activeColor: Colors.black,
                title: const Text(
                  'Lorem Ipsum is simply dummy text of. Lorem Ips',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey),
                ),
                toggleable: false,
                controlAffinity: ListTileControlAffinity.trailing,
                value: 'office',
                groupValue: address,
                onChanged: (value) {
                  setState(() {
                    address = value.toString();
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'Payment Method',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              RadioListTile(
                activeColor: Colors.black,
                title: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Image.network(
                          'https://gopay.co.id/icon.png',
                          height: 25,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      flex: 8,
                      child: Text(
                        'Gopay',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                toggleable: false,
                controlAffinity: ListTileControlAffinity.trailing,
                value: 'gopay',
                groupValue: payment,
                onChanged: (value) {
                  setState(() {
                    payment = value.toString();
                  });
                },
              ),

              RadioListTile(
                activeColor: Colors.black,
                title: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Image.network(
                          'https://avatars.githubusercontent.com/u/476675?s=280&v=4',
                          height: 20,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      flex: 8,
                      child: Text(
                        'Paypal',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                toggleable: false,
                controlAffinity: ListTileControlAffinity.trailing,
                value: 'paypal',
                groupValue: payment,
                onChanged: (value) {
                  setState(() {
                    payment = value.toString();
                  });
                },
              ),

              RadioListTile(
                activeColor: Colors.black,
                title: Row(
                  children: const [
                    Expanded(
                        flex: 1,
                        child: FaIcon(
                          FontAwesomeIcons.commentDollar,
                          color: Colors.black54,
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 8,
                      child: Text(
                        'Bank Tranfer',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                toggleable: false,
                controlAffinity: ListTileControlAffinity.trailing,
                value: 'bank',
                groupValue: payment,
                onChanged: (value) {
                  setState(() {
                    payment = value.toString();
                  });
                },
              ),

              RadioListTile(
                activeColor: Colors.black,
                title: Row(
                  children: const [
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.credit_card,
                          color: Colors.black54,
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 8,
                      child: Text(
                        'Credit Card',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
                toggleable: false,
                controlAffinity: ListTileControlAffinity.trailing,
                value: 'creditcard',
                groupValue: payment,
                onChanged: (value) {
                  setState(() {
                    payment = value.toString();
                  });
                },
              ),
              Container(
                height: 285,
                width: double.infinity,
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
                            height: 20,
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 20,
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
                              child: const Text('Checkout'),
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
