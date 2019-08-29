import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:thepublictransport_app/framework/theme/ThemeEngine.dart';
import 'package:thepublictransport_app/pages/Delay/Delay.dart';
import 'package:thepublictransport_app/pages/Settings/Settings.dart';
import 'package:thepublictransport_app/ui/components/SelectionButtons.dart';

class HomeBackground extends StatefulWidget {
  final PanelController controller;

  HomeBackground(this.controller);

  @override
  _HomeBackgroundState createState() => _HomeBackgroundState(controller);
}

class _HomeBackgroundState extends State<HomeBackground> {
  final PanelController controller;

  var theme = ThemeEngine.getCurrentTheme();

  _HomeBackgroundState(this.controller);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            FloatingActionButton(
              backgroundColor: theme.floatingActionButtonColor,
              elevation: 0,
              onPressed: null,
              heroTag: "HEROOOO",
              child: Icon(
                Icons.directions_bus,
                color: theme.floatingActionButtonIconColor,
                size: 40,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Willkommen zurück !",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'NunitoBold',
                  color: theme.titleColor
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "The Public Transport",
              style: TextStyle(
                  color: theme.subtitleColor,
                  fontFamily: 'Nunito'
              ),
            )
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.09,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SelectionButtons(
              gradient: Gradients.cosmicFusion,
              description: Text(
                  "Suche",
                  style: TextStyle(
                      fontSize: 12,
                      color: theme.textColor
                  ),
              ),
              icon: Icon(
                  Icons.search,
                  color: theme.titleColorInverted,
                  size: 30,
              ),
              callback: () {
                controller.open();
              },
            ),
            SelectionButtons(
              gradient: Gradients.jShine,
              description: Text(
                  "Haltestellen",
                style: TextStyle(
                    fontSize: 12,
                    color: theme.textColor
                ),
              ),
              icon: Icon(
                Icons.location_on,
                color: theme.titleColorInverted,
                size: 30,
              ),
              callback: () {
                controller.open();
              },
            ),
            SelectionButtons(
              gradient: Gradients.rainbowBlue,
              description: Text(
                  "Verspätungen",
                style: TextStyle(
                    fontSize: 12,
                    color: theme.textColor
                ),
              ),
              icon: Icon(
                MaterialCommunityIcons.bus_alert,
                color: theme.titleColorInverted,
                size: 30,
              ),
              callback: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Delay()));
              },
            ),
            SelectionButtons(
              gradient: Gradients.coldLinear,
              description: Text(
                  "Einstellungen",
                style: TextStyle(
                    fontSize: 12,
                    color: theme.textColor
                ),
              ),
              icon: Icon(
                Icons.settings,
                color: theme.titleColorInverted,
                size: 30,
              ),
              callback: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Settings()));
              },
            ),
          ],
        )
      ],
    );
  }
}