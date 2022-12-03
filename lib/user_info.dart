import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;

import 'api/apiclient.dart';


class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
 Future fetchUser() async {
   var response = BaseClient().get('/todos/').catchError((err){});
   
  //  if (response==null) return null;
  //  debugPrint("Sucessful");
  return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'User Information',
          style: TextStyle(color: Colors.black),

        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      extendBody: true,
    
      body: FutureBuilder(
        future: fetchUser(),
        builder: (context, snapshot) {
          if (! snapshot.hasData){
            return Center(child: const CircularProgressIndicator());
          }else{
            print(snapshot.data);
          
          return Padding(
                  padding: EdgeInsets.only(top: 20, left: 8.0),
                    child: ListView.separated(
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(children: [
                            Text(
                              //  '${snapshot.data}',
                               
                              snapshot.data[index]['title'].toString(),
                            
                      
                              style:
                                  TextStyle(color: Colors.black, fontSize: 12),
                            ),
                          ]),
                        );
                      },
                      separatorBuilder: ((context, index) {
                        return const Divider(
                          height: 3,
                          thickness: 2,
                        );
                      }),
                      itemCount: snapshot.data.length,
                    ),
                
                );
        }},
      ),
    );
  }
}
