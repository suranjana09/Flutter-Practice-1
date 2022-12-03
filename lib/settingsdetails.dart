import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:osin/change_password.dart';

class SettingsDetails extends StatefulWidget {
  const SettingsDetails({Key? key}) : super(key: key);

  @override
  State<SettingsDetails> createState() => _SettingsDetailsState();
}

class _SettingsDetailsState extends State<SettingsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.transparent,
          title: const Text(
            'Settings Page',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0,
        ),
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, CupertinoPageRoute(builder: (ctx){
                    return ChangePassword();
                  }
                  ));
                },
                child: Container(
                  height: 50,
                  child: const ListTile(
                    minLeadingWidth: 2,
                    leading: Icon(
                      Icons.lock_outline,
                      color: Colors.black,
                      size: 30,
                    ),

                    title: Text(
                      'Change Password',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                    height: 50,
                    child: const ListTile(
                      minLeadingWidth: 2,
                      leading: Icon(
                        Icons.person_outline,
                        color: Colors.black,
                        size: 30,
                      ),
                      title: Text(
                        'Edit Profile',
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                    height: 50,
                    child: const ListTile(
                      minLeadingWidth: 2,
                      leading: Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      title: Text(
                        'Verify Email',
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  height: 50,
                  child: const ListTile(
                    minLeadingWidth: 2,
                    leading: Icon(
                      Icons.phone_android_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text(
                      'Verify Phone',
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                    height: 50,
                    child: const ListTile(
                      minLeadingWidth: 2,
                      leading: Icon(
                        Icons.payment_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
                      title: Text(
                        'Payments',
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                    height: 50,
                    child: const ListTile(
                      minLeadingWidth: 2,
                      leading: Icon(
                        Icons.verified_user_outlined,
                        color: Colors.black,
                        size: 30,
                      ),

                      title: Text(
                        'App Version',
                        style:
                            TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    )),
              ),
            ],
          ),
        ));
  }
}
