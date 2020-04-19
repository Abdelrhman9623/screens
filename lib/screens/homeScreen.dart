import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          colors: Colors.green,
          size: 25,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.grey,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.grey,
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.40),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  'Get Coaching',
                  style: GoogleFonts.montserrat(
                    fontSize: 20
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25,70,25,0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      color: Colors.grey
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25,25,5,5),
                          child: Text(
                            'YOU HAVE',
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25,40,5,25),
                          child: Text(
                            '206',
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 100,),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Buy More',
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.bold,
                            color: Colors.green
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40,),
          Container(
            padding: EdgeInsets.only(left: 27, right: 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MY COACHES',
                  style: GoogleFonts.quicksand(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'VIWE PAST SESSIONS',
                  style: GoogleFonts.quicksand(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 4,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard('scarlett', 'Available', 1),
              _buildCard('scarlett', 'Away', 2),
              _buildCard('scarlett', 'Away', 3),
              _buildCard('scarlett', 'Available', 4),
              _buildCard('scarlett', 'Available', 5),
              _buildCard('scarlett', 'Away', 6),
            ],
          ),
        ],
      ),
    );
  }


  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      elevation: 7,
      child: Column(
        children: <Widget>[
          SizedBox(height: 12,),
          Stack(
            children: <Widget>[
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://static.arageek.com/wp-content/uploads/2019/02/scarlett-johansson-13671719-1-402.jpg',
                    ),
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 45),
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: status == 'Away' ? Colors.amber : Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2,
                  )
                ),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Container(
            child: Text(
              name,
              style: GoogleFonts.quicksand(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),
            ),
          ),
          SizedBox(height: 2,),
          Container(
            child: Text(
              status,
              style: GoogleFonts.quicksand(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),
            ),
          ),
          SizedBox(height: 15,),
          Expanded(
            child: Container(
            // height: 40,
            // padding: EdgeInsets.only(top: 10,bottom: 10),
              width: 175,
              decoration: BoxDecoration(
                color: status == 'Away' ? Colors.grey : Colors.green,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ), 
              ),
              child: Center(
                child: Text(
                  'Request',
                  style: GoogleFonts.quicksand(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      margin: cardIndex.isEven ? EdgeInsets.fromLTRB(10, 0, 25, 10) : EdgeInsets.fromLTRB(25, 0, 5, 10),
    );
  }
}

// Widget _buildCard(String name, String status, int cardIndex) {
//     return Card( 
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0)
//       ),
//       elevation: 7.0,
//       child: Column(
//         children: <Widget>[
//           SizedBox(height: 12.0),
//           Stack(
//             children: <Widget>[
//               Container(
//                 height: 60.0,
//                 width: 60.0,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30.0),
//                   color: Colors.green,
//                   image: DecorationImage(
//                     image: NetworkImage(
//                       'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
//                     )
//                   )
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 40.0),
//                 height: 20.0,
//                 width: 20.0,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30.0),
//                   color: status == 'Away' ? Colors.amber : Colors.green,
//                   border: Border.all(
//                     color: Colors.white,
//                     style: BorderStyle.solid,
//                     width: 2.0
//                   )
//                 ),
//               )
//             ]),
//               SizedBox(height: 8.0),
//               Text(
//                 name,
//                 style: TextStyle(
//                   fontFamily: 'Quicksand',
//                   fontWeight: FontWeight.bold,
//                   fontSize: 15.0,
//                 ),
//               ),
//               SizedBox(height: 5.0),
//               Text(
//                 status,
//                 style: TextStyle(
//                   fontFamily: 'Quicksand',
//                   fontWeight: FontWeight.bold,
//                   fontSize: 12.0,
//                   color: Colors.grey
//                 ),
//               ),
//               SizedBox(height: 15.0),
//               Expanded(
//                 child: Container(
//                   width: 175.0,
//                   decoration: BoxDecoration(
//                     color: status == 'Away' ? Colors.grey: Colors.green,
//                     borderRadius: BorderRadius.only
//                     (
//                       bottomLeft: Radius.circular(10.0),
//                     bottomRight: Radius.circular(10.0)
//                   ),
//                 ),
//                 child: Center(
//                   child: Text('Request',
//                   style: TextStyle(
//                     color: Colors.white, fontFamily: 'Quicksand'
//                   ),
//                 ),
//               )
//               )
//               )
//             ],
//           ),
//       margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
//      );
//   }
// }