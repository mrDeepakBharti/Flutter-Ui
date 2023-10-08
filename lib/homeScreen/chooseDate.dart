import 'package:flutter/material.dart';

const Color color = Colors.white54;

class chooseDate extends StatefulWidget {
  const chooseDate({super.key});

  @override
  State<chooseDate> createState() => _chooseDateState();
}

class _chooseDateState extends State<chooseDate> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              'Choose Date',
              style: TextStyle(fontSize: 18.0, color: Color(0xfffB4B4B4)),
            ),
            TextButton(
                onPressed: () async {
                  DateTime? datepicked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2024));
                },
                child: Text(
                  '05, Oct-10, Oct',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
        SizedBox(
          width: 50.0,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 550.0),
          child: const VerticalDivider(
            color: Color(0xfffBFBFBF),
            thickness: 2.0,
          ),
        ),
        SizedBox(
          width: 30.0,
        ),
        Column(
          children: [
            Text(
              'Number of Rooms',
              style: TextStyle(fontSize: 18.0, color: Color(0xfffB4B4B4)),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  '1 Room - 2 Adults',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        )
      ],
    );
  }
}
