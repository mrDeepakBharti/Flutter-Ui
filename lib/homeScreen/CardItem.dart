import 'package:flutter/material.dart';
import 'package:flutter_application_booking_hotel/homeScreen/filter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardDesign extends StatefulWidget {
  const CardDesign({super.key});

  @override
  State<CardDesign> createState() => _CardDesignState();
}

class _CardDesignState extends State<CardDesign> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Color(0xfffFFFFFF),
          title: Text(
            'Hotels Found',
            style: TextStyle(color: Colors.black),
          ),
          pinned: true,
          floating: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, right: 30.0),
              child: Text(
                'Filters',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 5.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const f()));
                },
                icon: Icon(
                  Icons.filter_list_sharp,
                  color: Color(0xfff6DC5B7),
                ),
              ),
            )
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 300.0,
                width: 350.0,
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Column(
                    children: [
                      Container(
                        height: 170.0,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assest/images/pexels-abbas-mohammed-3680912.jpg'),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0))),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Grand Royal Hotel',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              '\$180',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text('Wembely, London'),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.locationDot,
                              color: Color(0xfff6DC5B7),
                              size: 15.0,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text('2.0 Km to c.../per night')
                          ],
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.starHalf,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('80 Reviews')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 300.0,
                width: 350.0,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Column(
                    children: [
                      Container(
                        height: 170.0,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0)),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assest/images/pexels-asad-photo-maldives-3155666.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Queen Hotel',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              '\$200',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text('Wembely, London'),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.locationDot,
                              color: Colors.greenAccent,
                              size: 15.0,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text('2.0 Km to c.../per night')
                          ],
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.starHalf,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('80 Reviews')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 300.0,
                width: 350.0,
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Column(
                    children: [
                      Container(
                        height: 170.0,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0)),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assest/images/pexels-donald-tong-189296.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Grand Royal Hotel',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              '\$60',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text('Wembely, London'),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.locationDot,
                              color: Colors.greenAccent,
                              size: 15.0,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text('2.0 Km to c.../per night')
                          ],
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.starHalf,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('\$80 Reviews')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 300.0,
                width: 350.0,
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Column(
                    children: [
                      Container(
                        height: 170.0,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0)),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assest/images/pexels-iván-rivero-1001965.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Queen',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              '\$170',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.w800),
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text('Wembely, London'),
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.locationDot,
                              color: Colors.greenAccent,
                              size: 15.0,
                            ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text('2.0 Km to c.../per night')
                          ],
                        ),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.star,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            FaIcon(
                              FontAwesomeIcons.starHalf,
                              color: Colors.greenAccent,
                              size: 20.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('80 Reviews')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
