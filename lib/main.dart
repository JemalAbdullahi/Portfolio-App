import 'package:flutter/material.dart';
import 'package:portfolio/pages/pages.dart';
import 'package:portfolio/utils/AppColors.dart';
import 'package:portfolio/utils/AppIcons.dart';
import 'package:portfolio/widgets/navigation_menu_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jemal\'s Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedMenuIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = new TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {
        selectedMenuIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double iconSize = 20.0;
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: backgroundLight,
      body: Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/avtar.png"),
                  ),
                  navigationMenu(
                    navHome,
                    height: iconSize,
                    width: iconSize,
                    isSelected: selectedMenuIndex == 0,
                    onClick: () {
                      _tabController.animateTo(0);
                    },
                  ),
                  navigationMenu(
                    navTime,
                    height: iconSize,
                    width: iconSize,
                    isSelected: selectedMenuIndex == 1,
                    onClick: () {
                      _tabController.animateTo(1);
                    },
                  ),
                  navigationMenu(
                    navPortfolio,
                    height: iconSize,
                    width: iconSize,
                    isSelected: selectedMenuIndex == 2,
                    onClick: () {
                      _tabController.animateTo(2);
                    },
                  ),
                  navigationMenu(
                    navGroup,
                    height: iconSize,
                    width: iconSize,
                    isSelected: selectedMenuIndex == 3,
                    onClick: () {
                      _tabController.animateTo(3);
                    },
                  ),
                  navigationMenu(
                    navContact,
                    height: iconSize,
                    width: iconSize,
                    isSelected: selectedMenuIndex == 4,
                    onClick: () {
                      _tabController.animateTo(4);
                    },
                  ),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    HomePage(),
                    ExperiencePage(),
                    PortfolioPage(),
                    TeamPage(),
                    ContactPage(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
