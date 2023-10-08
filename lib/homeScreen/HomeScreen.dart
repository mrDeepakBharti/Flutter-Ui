import 'package:flutter/material.dart';
import 'package:flutter_application_booking_hotel/homeScreen/CardItem.dart';
import 'package:flutter_application_booking_hotel/homeScreen/chooseDate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const Color color = Colors.black;
const SizedBox w = SizedBox(
  width: 30.0,
);

class h1 extends StatefulWidget {
  const h1({super.key});

  @override
  State<h1> createState() => _h1State();
}

class _h1State extends State<h1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xfffFAFAFA),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          'Explore',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: FaIcon(
              FontAwesomeIcons.heart,
              color: Colors.black,
            ),
          ),
          w,
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 10.0),
            child: FaIcon(
              FontAwesomeIcons.locationDot,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          const Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 100.0),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'London...',
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 320.0),
            child: FloatingActionButton(
              backgroundColor: Color(0xfff53D4C2),
              onPressed: () {},
              child: Icon(Icons.search),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 120.0, left: 10, right: 10.0),
            child: chooseDate(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: CardDesign(),
          )
        ],
      ),
    );
  }
}
