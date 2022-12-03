

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:osin/screens/second_screens.dart';

import '../api/apiclient.dart';


// List data = [  {
//   'images' :"https://i.pinimg.com/1200x/fa/96/6f/fa966f2794f277078e9f0379efdfb1bc.jpg", 
//   'title' : 'PRS Anniversary',
//   'subtitle' : 'IDR 55.00.000'
// },
// {
// 'images' :"https://i.pinimg.com/1200x/fa/96/6f/fa966f2794f277078e9f0379efdfb1bc.jpg", 
//   'title' : 'PRS Anniversary',
//   'subtitle' : 'IDR 55.00.000'
// },
// {
//   'images' :"https://i.pinimg.com/1200x/fa/96/6f/fa966f2794f277078e9f0379efdfb1bc.jpg", 
//   'title' : 'PRS Anniversary',
//   'subtitle' : 'IDR 55.00.000'
// },
// {
//   'images' :"https://i.pinimg.com/1200x/fa/96/6f/fa966f2794f277078e9f0379efdfb1bc.jpg", 
//   'title' : 'PRS Anniversary',
//   'subtitle' : 'IDR 55.00.000'

// }

// ];
     Future fetchImages() async {
  // var response = await BaseClient().get('/api/users?page=2');
   var response = await BaseClient().get('/products');
  return response;
}
    

  

Widget buildGridView() => Container(
      padding: EdgeInsets.only(top: 20,left: 10),
       child: FutureBuilder(
      future: fetchImages(),
      builder: (context, snapshot) {
        final prodList = snapshot.data;
        
        
        if(snapshot.hasData) {
          // print(prodList);
          // print(snapshot.data);
          // List   list = snapshot.data['data'];
          // print(list);
          
          return Container(
            child: GridView.builder(
              shrinkWrap: true,
              primary: true,
                // physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 25, childAspectRatio: 0.9),
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              final prod = prodList[index];
              //  print(prod);

              return GestureDetector(
                onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SecondScreen(prod:prod);
              },));
            },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 10,top: 10),
                        height: 180,
                        width: 180,
                        
                        decoration: BoxDecoration(
                        
                            image: DecorationImage(
                              image:
                              NetworkImage(
                                  snapshot.data[index]['thumbnail'].toString()),
                                  fit: BoxFit.fill
                            ),
                            borderRadius: BorderRadius.circular(25)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                     Container(
                      padding: EdgeInsets.only(left: 10),
                       child: Text(
                        snapshot.data[index]['title'].toString(),
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                     ),
                     Container(
                      padding: EdgeInsets.only(left: 10),
                       child: Text(
                         snapshot.data[index]['price'].toString(),
                        style: TextStyle(
                          fontSize: 14,
                        ),
                    ),
                     ),
                     SizedBox(
                      height: 10,
                     ),
                  ],
                ),
              );
            }),
          );
          
        }
        else
         {
          return CircularProgressIndicator(
            strokeWidth: 1,
          );
        } 
      
      } )
    
    );



