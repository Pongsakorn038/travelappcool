import 'package:flutter/material.dart';

class OtherProfilepage extends StatefulWidget {
  const OtherProfilepage({super.key});

  @override
  State<OtherProfilepage> createState() => _OtherProfilepageState();
}

class _OtherProfilepageState extends State<OtherProfilepage> {
  final double coverHeight = 280;
  final double profH = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          toppage(),
          nameProfile(),
          folButton(),
          contProfile(),
          folNumber(),
          uPost(),
          post(),
        ],
      ),
    );
  }

  Widget toppage() {
    //final bottom = profH / 2;
    final top = coverHeight - profH / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          //  margin: EdgeInsets.only(bottom: bottom),
          child: coverImg(),
        ),
        Positioned(
          top: top,
          left: 20.0,
          child: profImg(),
        )
      ],
    );
  }

//Create bg picture
  Widget coverImg() => Container(
        color: Colors.grey,
        child: Image.network(
          'https://images.squarespace-cdn.com/content/v1/5c6494bbf4e5310e57b3de34/1623557067947-PN4CQHL8B84UEXR4K9CP/Capture.PNG',
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

//Create profile picture
  Widget profImg() => CircleAvatar(
        radius: profH / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: NetworkImage(
            'https://images.squarespace-cdn.com/content/v1/5c6494bbf4e5310e57b3de34/1623557067947-PN4CQHL8B84UEXR4K9CP/Capture.PNG'),
      );

//create name profile

  Widget nameProfile() => Container(
        padding: EdgeInsets.symmetric(horizontal: 170, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mr. TravelMan',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Text(
              'Adventure&Camping',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      );

//create content profile
  Widget contProfile() => Container(
        padding: EdgeInsets.symmetric(horizontal: 60, vertical: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'I love to go to weird place with my orange cat.\nI want to find some friends to camp with me.',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      );

  //create follow button
  Widget folButton() => Container(
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Follow',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      );

  //create follow number
  Widget folNumber() => Container(
        child: Align(
            child: Column(
          children: [
            Text('\n'),
            Container(
              width: 421,
              height: 95,
              child: Card(
                elevation: 5.0,
                color: Color.fromARGB(172, 0, 0, 0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '     38\n    Posts',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '               3820\n            Followers',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '             160\n        Following',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 50,
                    )
                  ],
                ),
              ),
            ),
          ],
        )),
      );

  //create post tag
  Widget uPost() => Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '\n'
              "TravelMan's Posts",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );

  //create post image
  Widget post() => Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Color.fromARGB(255, 151, 151, 151),
              child: Column(
                children: <Widget>[
                  Text('\n'),
                  //test add img
                  Container(
                    child: Image.network(
                      'https://images.squarespace-cdn.com/content/v1/5c6494bbf4e5310e57b3de34/1623557067947-PN4CQHL8B84UEXR4K9CP/Capture.PNG',
                    ),
                  ),

                  Container(
                    child: Text(
                        "Hi all Now 2023 I would like to say Happy New Year!!\nAnd I suggest Maldives for you all ........  View All"),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[],
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.thumb_up,
                          ),
                          Text("continue recommend")
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            //2
            Card(
              color: Color.fromARGB(255, 151, 151, 151),
              child: Column(
                children: <Widget>[
                  Text('\n'),
                  //test add img
                  Container(
                    child: Image.network(
                      'https://images.squarespace-cdn.com/content/v1/5c6494bbf4e5310e57b3de34/1623557067947-PN4CQHL8B84UEXR4K9CP/Capture.PNG',
                    ),
                  ),

                  Container(
                    child: Text(
                        "Hi all Now 2023 I would like to say Happy New Year!!\nAnd I suggest Maldives for you all ........  View All"),
                  ),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[],
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.thumb_up,
                          ),
                          Text("continue recommend")
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
