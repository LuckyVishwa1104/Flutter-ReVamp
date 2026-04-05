import 'package:flutter/material.dart';

class ListViewBuilderSeparated extends StatelessWidget {
  const ListViewBuilderSeparated({super.key});

  @override
  Widget build(BuildContext context) {

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
      appBar: AppBar(
        // foregrand and background color
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,

        // app bar title
        title: const Text(
          'ListViewSeparator',
          // title stying
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),

        // action button
        actions: const [
          Icon(
            Icons.snapchat,
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
          decoration: const BoxDecoration(color: Colors.white),
          height: 250,
          child: ListView.separated(
            
              padding: EdgeInsets.zero, // use this to avoid additinal at the bottom of the last item of list view

              scrollDirection: Axis.horizontal,  // to set the alignment of the children

              physics: const AlwaysScrollableScrollPhysics(),  // use to control the scrolling behaviour

              itemBuilder: (context, index) => Container(
                    height: 140,
                    width: 150,
                    decoration: BoxDecoration(
                      color: containerColor[index],
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    // height: 10,
                    width: 10,
                  ),
              itemCount: containerColor.length),
        ),
      ),
    );
  }

  
}
