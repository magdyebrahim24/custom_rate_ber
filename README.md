# custom Rate Bar

An Flutter Rate Bar Custom Widget 
have glow property and gesture or tap mode .
<br><br><br>


## App Preview 
![Image of app](/assets/app_preview.mp4)
<br><hr><br>

## features
- you can add intial Rate Bar Value .
- specify rate icons ,icons number and size .
- specify rate padding between icons .
- allow Half Rating feature .
- select build direction ( horizontal OR vertical )
- onRatingUpdate fun to get rate value .
- have Gestures rate mode .
- have tap only mode .
- specify icons glow ( color , radius ).
- can change icon color ( rated or not ) and change un rated alpha .

<br><hr><br>

## Example :
```
RatingBar(
      initialRating: 0,
      direction: Axis.horizontal,
      tapOnlyMode: _tapOnly,
      allowHalfRating: _halfRating,
      alpha: 50,
      itemCount: 5,
      glowRadius: 0.2,
      itemSize: 50,
      glow: _glowValue,
      ignoreGestures: false,
      unratedColor: Colors.grey,
      glowColor: Colors.orangeAccent,
      textDirection: TextDirection.ltr,
      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: Colors.blue,
      ),
      onRatingUpdate: (rating) {
        setState(() {
          _rateValue = rating;
        });
      },
    )
```

<br><hr><br>

## Usage :
usage code in [main.dart](lib\main.dart) file .

you can see rate bar build code in [rate_bar.dart](lib\rate_bar\rate_bar.dart) file .

<br><hr><br>

## Framework
- [Flutter](https://flutter.dev)
- For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
