import 'package:flutter/material.dart';
import 'package:moodful/components/background.dart';
import 'package:moodful/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:moodful/Screens/InsightsScreen/Components/days_tracked.dart';

class InsightScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen

    //return Scaffold(
    return BackgroundLogoRightBlank(
      text: "Insights",
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Spacer(),
          Spacer(),
          Spacer(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, bottom: 16.0, right: 8.00),
                child: Text(
                  "Mood Preformance",
                  style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  new CircularPercentIndicator(
                    radius: 100.0,
                    lineWidth: 13.0,
                    animation: true,
                    percent: 0.6,
                    center: new Text(
                      "60.0%",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    header: new Text(
                      "Positive",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.green,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new CircularPercentIndicator(
                    radius: 100.0,
                    lineWidth: 13.0,
                    animation: true,
                    percent: 0.2,
                    center: new Text(
                      "20.0%",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    header: new Text(
                      "Neutral",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.amber,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new CircularPercentIndicator(
                    radius: 100.0,
                    lineWidth: 13.0,
                    animation: true,
                    percent: 0.2,
                    center: new Text(
                      "20%",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    header: new Text(
                      "Negative",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.0),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: Colors.red,
                  ),
                ],
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 4.0, bottom: 8.0, top: 20.0, right: 4.0),
                child: Text(
                  "Days Tracked",
                  style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0, top: 16.0),
                child: SizedBox(
                  height: 200,
                  width: size.width * 0.9,
                  child: DaysTracked(
                    y1: 2,
                    y2: 1,
                    y3: 4,
                    y4: 2,
                    y5: 2,
                    y6: 1,
                    y7: 3,
                  ),
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, bottom: 16.0, right: 8.00),
                child: Text(
                  "Top Associations",
                  style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Colors.green,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children:[
                  Text(
                    "Excersise",
                    style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children:[
                    Text(
                      "64%",
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0, bottom: 8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Icon(
                        Icons.thumb_down,
                        color: Colors.red,
                        size: 24.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children:[
                      Text(
                        "Arguments",
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    children:[
                      Text(
                        "22%",
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
