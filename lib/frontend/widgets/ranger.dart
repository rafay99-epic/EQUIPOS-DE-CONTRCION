import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  RangeValues _currentRange = const RangeValues(0, 3000000);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 20,
        right: 20,
      ),
      child: Column(
        children: <Widget>[
          Theme(
            data: Theme.of(context).copyWith(
              sliderTheme: Theme.of(context).sliderTheme.copyWith(
                    trackHeight: 2.0,
                    activeTrackColor: Colors.white,
                    inactiveTrackColor: Colors.white,
                    activeTickMarkColor: Colors.white,
                    inactiveTickMarkColor: Colors.white,
                    overlayColor: Colors.transparent,
                    thumbColor: Theme.of(context).colorScheme.secondary,
                    valueIndicatorColor:
                        Theme.of(context).colorScheme.secondary,
                  ),
            ),
            child: RangeSlider(
              values: _currentRange,
              min: 0,
              max: 3000000,
              divisions: 3000000,
              labels: RangeLabels(
                _currentRange.start.round().toString(),
                _currentRange.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRange = values;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
