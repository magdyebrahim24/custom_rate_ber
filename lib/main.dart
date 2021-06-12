import 'package:custom_rate_ber/widgets/labeled_switch.dart';
import 'package:custom_rate_ber/rate_bar/rate_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rate Bar',
      home: MyHomePage(title: 'Custom Rating Bar'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _rateValue = 0;
  bool _glowValue = true;
  bool _tapOnly = false;
  bool _halfRating = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Please Select Rate',
                style: Theme.of(context).textTheme.headline4,
              ),
              // use of Rate Bar
              Expanded(
                child: Center(child: _ratingBar()),
                flex: 2,
              ),
              Expanded(
                flex: 1,
                child: Text(
                  'Your Rate Is : $_rateValue',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              LabeledSwitch(
                  label: 'Half Rating',
                  value: _halfRating,
                  onChanged: (value) {
                    setState(() {
                      _halfRating = value;
                    });
                  }),
              LabeledSwitch(
                  label: 'Glow',
                  value: _glowValue,
                  onChanged: (value) {
                    setState(() {
                      _glowValue = value;
                    });
                  }),
              LabeledSwitch(
                  label: 'Rate With Tap',
                  value: _tapOnly,
                  onChanged: (value) {
                    setState(() {
                      _tapOnly = value;
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ratingBar() {
    return RatingBar(
      initialRating: 0,
      direction: Axis.horizontal,
      tapOnlyMode: _tapOnly,
      allowHalfRating: _halfRating,
      alpha: 70,
      itemCount: 5,
      // glowRadius: 1,
      itemSize: 50,
      glow: _glowValue,
      // ignoreGestures: false,
      // unratedColor: Colors.grey,
      glowColor: Colors.grey,
      // textDirection: TextDirection.ltr,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        // color: Colors.blue,
      ),
      onRatingUpdate: (rating) {
        setState(() {
          _rateValue = rating;
        });
      },
    );
  }
}
