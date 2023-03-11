import 'package:flutter/material.dart';
import '_utils/intro/intro_screen.dart';
import '_utils/intro/intro_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'intro screen demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
      );
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(
      onDone: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => NextPage(),
        ),
      ),
      onSkip: () => print('Skipping the intro slides'),
      footerBgColor: Colors.black.withOpacity(1),
      activeDotColor: Colors.white,
      footerRadius: 0.0,
      indicatorType: IndicatorType.LINE,
      slides: [
        IntroScreen(
          title: 'Welcome to Plastracr',
          imageAsset: 'assets/a.png',
          description: 'We tackle global plastics pollution.',
          headerBgColor: Colors.white,
        ),
        IntroScreen(
          title: 'You shoot to contribute',
          headerBgColor: Colors.white,
          imageAsset: 'assets/b.png',
          description: "By uploading your photos, your contribution will be stored into our database including the geo location, time,waste types and ",
        ),
        IntroScreen(
          title: 'We Identify then Isolate',
          headerBgColor: Colors.white,
          imageAsset: 'assets/d.png',
          description: " We  harness the power of machine learning to identify un-recycled plastics in your contribution and isolated them by the location uploaded along.",
        ),
        IntroScreen(
          title: 'Global Visual Database',
          headerBgColor: Colors.white,
          imageAsset: 'assets/c.png',
          description: "We harness the power of machine learning to identify un-recycled plastics in the nature and isolated them bythe location uploaded along.",
        ),
      ],
    );

    return Scaffold(
      body: screens,
    );
  }
}

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) => Container(
    color: Colors.white,
  );
}
