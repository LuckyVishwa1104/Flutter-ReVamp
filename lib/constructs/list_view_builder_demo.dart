import 'package:flutter/material.dart';

class ListViewBuilderDemo extends StatelessWidget {
  const ListViewBuilderDemo({super.key});

  @override
  Widget build(BuildContext context) {

    // list of colors
    List<Color> containerColor = [
      Colors.purple,
      Colors.indigo,
      Colors.blue,
      Colors.green,
      Colors.yellow,
      Colors.orange,
      Colors.red,
    ];

    return Scaffold(

      // App bar - 
      appBar: AppBar(
        // foregrand and background color
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,

        // app bar title
        title: const Text(
          'ListViewBuilder',
          // title stying
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),

        // action button
        actions: const [
          Icon(
            Icons.face,
          )
        ],

        // action button padding
        actionsPadding: const EdgeInsets.only(right: 8),
      ),

      // drawer
      drawer: const Icon(Icons.grid_3x3),

      // body
      body: Container(
        decoration: const BoxDecoration(color: Colors.grey),
        padding: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 340,  // vertical list view controlls height
          // width: 350,   // horizontal list view controlls width
          decoration: const BoxDecoration(color: Colors.white),
          child: ListView.builder(
            shrinkWrap: true,

            padding: EdgeInsets.zero,  // use this to avoid additinal at the bottom of the last item of list view

            scrollDirection: Axis.vertical,  // to set the alignment of the children

            physics: const BouncingScrollPhysics(),  // use to control the scrolling behaviour

            itemCount: containerColor.length,
            itemBuilder: (context, index) {
              return Container(
                height: 140,  // applicable whenn vertical
                width: 300,   // applicable when horizontal
                decoration: BoxDecoration(
                  color: containerColor[index],
                  borderRadius: BorderRadius.circular(8),
                ),
              );
            },
          ),
        ),
      ),

      // 

    );
  }

}
