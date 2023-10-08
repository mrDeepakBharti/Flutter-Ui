import 'package:flutter/material.dart';

class f extends StatefulWidget {
  const f({super.key});

  @override
  State<f> createState() => _fState();
}

class _fState extends State<f> {
  RangeValues _rangeValues = RangeValues(0, 1000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.cancel_outlined,
                  color: Colors.black,
                )),
            centerTitle: true,
            title: Text(
              'Filter',
              style: TextStyle(fontSize: 20.0, color: Colors.black),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, right: 220.0),
                  child: Text(
                    'Price for 1 Night',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                StatefulBuilder(
                  builder: (BuildContext context,
                      void Function(void Function()) setState) {
                    return RangeSlider(
                        values: _rangeValues,
                        min: 0,
                        max: 1000,
                        divisions: 10,
                        activeColor: Color(0xff54D3C2),
                        labels: RangeLabels(
                            _rangeValues.start.round().toString(),
                            _rangeValues.end.round().toString()),
                        onChanged: (RangeValues value) {
                          setState(() {
                            _rangeValues = value;
                          });
                        });
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
