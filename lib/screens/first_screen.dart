import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'create_widget.dart';
import 'create_widget1.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    TabController tabController1 = TabController(length: 4, vsync: this);
    bool click = true;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'E-Commerce App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu_sharp),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.card_travel))],
      ),
      extendBody: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  height: 160,
                  padding: const EdgeInsets.only(right: 30, left: 30),
                  decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://images.unsplash.com/photo-1605020420620-20c943cc4669?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z3VpdGFyfGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  height: 35,
                ),
      
                Container(
                    height: 35,
                    width: double.infinity,
                    child: TabBar(
                      controller: tabController,
                      unselectedLabelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black),
                      isScrollable: true,
                      labelPadding: EdgeInsets.symmetric(horizontal: 10),
                      tabs: [
                        Tab(
                            child: Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(width: 1)),
                          child: const Center(
                            child: Text(
                              'All',
                            ),
                          ),
                        )),
                        Tab(
                            child: Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(width: 1)),
                          child: const Center(
                            child: Text(
                              'Guitar',
                            ),
                          ),
                        )),
                        Tab(
                            child: Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(width: 1)),
                          child: const Center(
                            child: Text(
                              'Bass',
                            ),
                          ),
                        )),
                        Tab(
                            child: Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(width: 1)),
                          child: const Center(
                            child: Text(
                              'Effect',
                            ),
                          ),
                        )),
                        
                      ],
                      
                    )),
                    SizedBox(
                      height: 20,
                    ),
                     Container(
                      height: 25,
                      padding: EdgeInsets.only(left:10),
                     child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    
                  children:  [
                   const Expanded(
                      flex: 20,
                      child: Text(
                        'New Arrival',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: GestureDetector(
                        child: const Text(
                          'See All'
                        ),
                      ),
                    )
                    ],
                )
                ),
              
              
                Container(
                  height:390,
                  
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: TabBarView(
                        controller: tabController,
                        children: [
                          Container(
                        
                            child: Center(child: Text('All products')),
                          ),
                          Container(
                            // padding: EdgeInsets.only(left: 5),
                            child: buildGridView()
                            ),
                          const Center(
                            child: Text('Bass'),
                          ),
                          const Center(
                            child: Text('Effects'),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
      
                // Container(
                //     height: 35,
                //     child: Row(
                //       children: [
                //         Expanded(
      
                //           child: IconButton(
                //             onPressed: () {
                //               setState(() {
                //                 click = !click;
                //               });
                //             },
                //             icon: Icon((click == false) ? Icons.home_outlined : Icons.home),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 20,
                //         ),
                //         Expanded(
                //           child: IconButton(
      
                //             onPressed: () {
                //                setState(() {
                //                 click = !click;
                //               });
                //             },
                //             icon: Icon((click == false) ? Icons.search_outlined : Icons.search),
                //           ),
                //         ),
                //         SizedBox(
                //           width: 20,
                //         ),
                //          Expanded(
                //            child: IconButton(
                //             onPressed: () {
                //                setState(() {
                //                 click = !click;
                //               });
                //             },
                //             icon: Icon((click== true)?Icons.favorite_outline: Icons.favorite),
                //                                ),
                //          ),
                //         SizedBox(
                //           width: 20,
                //         ),
                //          Expanded(
                //            child: IconButton(
                //             onPressed: () {},
                //             icon: Icon((click == true)? Icons.person_outline:Icons.person),
                //                                ),
                //          ),
      
                //       ],
                //     ))
      
      
                // Container(
                //   height: 35,
                //   child: ListView(
                //     scrollDirection: Axis.horizontal,
                //     children:[
                //     Container(
                //       height: 35,
                //       width: 85,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         border: Border.all(width: 1)
      
                //       ),
                //      child: Center(child: Text('All'))
                //     ),
                //     const SizedBox(
                //       width: 10,
                //     ),
                //      Container(
                //       height: 35,
                //       width: 85,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         border: Border.all(width: 1)
      
                //       ),
                //      child: Center(child: Text('Guitar'))
                //     ),
                //      SizedBox(
                //       width: 10,
                //     ),
                //      Container(
                //       height: 35,
                //       width: 85,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         border: Border.all(width: 1)
      
                //       ),
                //      child: Center(child: Text('Bass'))
                //     ),
                //     SizedBox(
                //       width: 10,
                //     ),
                //      Container(
                //       height: 35,
                //       width: 85,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(20),
                //         border: Border.all(width: 1)
      
                //       ),
                //      child: Center(child: Text('Effect'))
                //     ),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 20,
                // ),
                // buildListView(),
                //  SizedBox(
                //   height: 20,
                // ),
                // buildListView(),
                //  SizedBox(
                //   height: 20,
                // ),
                // buildListView()
              ],
            ),
          ),
        ),
      ),
      )
    );
  }
}
