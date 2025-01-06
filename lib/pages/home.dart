import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget { 
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(    //As it helps in building app bar , bottom navigation, float action button , drawer , snack bar.
      appBar: appBar(),
      backgroundColor: Colors.white ,
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          _searchField(),

          SizedBox(height: 40,), // used to give distance from the top

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text( // to create some space from the left side we wrap the text in padding widget
                  "Category",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              //Horizontal List view
              SizedBox(height: 15,) ,
              Container(
                height: 150,
                color: Colors.blue, // added to see the full length of the container.
                //In order to have a list view in the app we can use a listview widget 
                child: ListView.builder(
                  itemBuilder: (context, index){
                    return Container();
                  }
                  ),
              )

            ],
          )
        ],
      ),
    );
  }

  Container _searchField() {
    return Container(
          margin: EdgeInsets.only(top:40, left:20,right:20), // to shift it fron top left & right 
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0,
              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15), // to again change the size of the field.
              hintText: "Search Pancake", // It is not visible as we did not set the width for the row , so to do it we put suffixIcon in the container widget.
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 14
              ),

              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0), // Wrapped the SVG pic inside the padding widget to make its size small.
                child: SvgPicture.asset('assets/icons/Search.svg'),
              ), // to add a image at the starting of the text field or the left side.

              suffixIcon: SizedBox(
                // color: Colors.blue, to see that the whole row is covered that's why text is not visible.
                width: 100, //to make the text visible we set the width of the container .
                child: IntrinsicHeight(
                  child: Row(    // SuffixIcon into row widget to draw the vertical | line before the fliter icon 
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      VerticalDivider(  // When we want to use a divider in a row then we have to wrap the row widget in the InrinsicHeight widget.
                        color: Colors.black,
                        indent: 10, // create space from the top 
                        endIndent: 10, // create space from the bottom
                        thickness: 0.3,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0), // Same added the SVG pic in the padding widget and changed the size.
                        child: SvgPicture.asset('assets/icons/Filter.svg'),
                      ),
                    ],
                  ),
                ),
              ),
              border: OutlineInputBorder( // To remove the underlined border of the text field and to give it a desired size.
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
              )
            ),
          ),
        );
  }

  AppBar appBar() {
    return AppBar(   // For the top title or the app bar 
      title: Text('Breakfast',
      style: TextStyle(
        color: Colors.black,
        fontSize: 35,
        fontWeight: FontWeight.bold
      ),
      ),
      backgroundColor: Colors.white, // So that the app bar have a white bg and no shadow 
      elevation: 0.0,
      centerTitle: true, // to centre the title
      leading:GestureDetector(
        onTap: () {
          
        },
        child: Container( // used to make the < icon using the svg dependancy and container passed as the widget
          margin: EdgeInsets.all(10),
          
          decoration: BoxDecoration( // decorations used to implement changes in the container 
            color: Color(0xffF7F8F8),
            borderRadius: BorderRadius.circular(10) // border radius to change the size 
          ), // to make the container small from margins 
          child: SvgPicture.asset('assets/icons/Arrow - Left 2.svg'),
         
        ),
      ) ,
      actions: [
        GestureDetector(
          onTap: () {             // Pehle jo code likha tha container ke ander usko widget me wrap kra to make the buttons clickable.
                                       
          },
          child: 
            Container( // used to make the < icon using the svg dependancy and container passed as the widget
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 37,
            decoration: BoxDecoration( // decorations used to implement changes in the container 
              color: Color(0xffF7F8F8),
              borderRadius: BorderRadius.circular(10) // border radius to change the size 
            ), // to make the container small from margins 
            child: SvgPicture.asset('assets/icons/dots.svg',
            height: 5,
            width: 5,
            
            ),
           
          )
          ,
        ),
      ],
    );
  }
}