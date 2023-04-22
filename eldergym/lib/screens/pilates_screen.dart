import 'package:eldergym/constants.dart';
import 'package:eldergym/screens/under_dev.dart';
import 'package:eldergym/widgets/bottom_nav_bar.dart';
import 'package:eldergym/widgets/search_bar.dart';
import 'package:eldergym/widgets/session_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PilatesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kShadowColor,
              image: DecorationImage(
                image: AssetImage("assets/images/pilates_bg.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Pilates",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "20-30 MIN Course",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6, // it just take 60% of total width
                      child: Text(
                        "For those who stretch the limits.",
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5, // it just take the 50% width
                      child: SearchBar(),
                    ),
                    SizedBox(
                      height: size.width * 0.15,
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        SeassionCard(
                          sessionName: "Leg lifts",
                          seassionNum: "30 Seconds",
                          isDone: true,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => const UnderDev()));
                          },
                        ),
                        SeassionCard(
                          sessionName: "Toe taps",
                          seassionNum: "30 Seconds",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => const UnderDev()));
                          },
                        ),
                        SeassionCard(
                          sessionName: "Single leg stretch",
                          seassionNum: "10 Reps",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => const UnderDev()));
                          },
                        ),
                        SeassionCard(
                          sessionName: "Bird Dog",
                          seassionNum: "30 Seconds",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => const UnderDev()));
                          },
                        ),
                        SeassionCard(
                          sessionName: "One leg circle",
                          seassionNum: "30 Seconds",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => const UnderDev()));
                          },
                        ),
                        SeassionCard(
                          sessionName: "Side leg lifts",
                          seassionNum: "8 Reps",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => const UnderDev()));
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Meditation",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(10),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: -13,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          SvgPicture.asset(
                            "assets/icons/Meditation_women_small.svg",
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Basic 2",
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Text("Start to lift heavier")
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: SvgPicture.asset("assets/icons/Lock.svg"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
