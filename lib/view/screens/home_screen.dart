import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../widgets/actions_movies.dart';
import '../widgets/adventures_movies.dart';
import '../widgets/comedies_movies.dart';
import '../widgets/movies_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this,initialIndex: 0);
    _tabController.addListener(_handleTabSection);
    super.initState();
  }

  _handleTabSection(){
    if(_tabController.indexIsChanging){
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(
          'Movies Streaming',
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(height: 10,),
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              height: 230,
              enlargeCenterPage: true,
              aspectRatio: 16/9,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
            items: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('assets/images/upcoming1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('assets/images/upcoming2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('assets/images/upcoming3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('assets/images/upcoming4.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          TabBar(
            controller: _tabController,
            unselectedLabelColor: Colors.white60,
            dividerColor: Colors.transparent,
            tabAlignment: TabAlignment.center,
            isScrollable: true,
            indicator: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            labelStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.white
            ),
            tabs: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10), child: Text("All")),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10), child: Text("Action")),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10), child: Text("Adventure")),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10), child: Text("Comedy")),
            ],
          ),
          SizedBox(height: 20,),
          Center(
            child: [
              MoviesSection(),
              ActionsMovies(),
              AdventuresMovies(),
              ComediesMovies(),
            ][_tabController.index],
          ),
        ],
      ),
    );
  }
}
