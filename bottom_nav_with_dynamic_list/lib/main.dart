import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: "Teal Pasupathi's Task"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Story> _stories;
  List<Story> _cards;
  List<Story> _requests;

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _populateData() {
    _stories = <Story>[
      Story(
          name: 'This is demo UI question?',
          storyUrl:
              'https://images.unsplash.com/photo-1519501025264-65ba15a82390?ixlib=rb-1.2.1&w=1000&q=80'),
      Story(
          name: 'This is demo UI question?',
          storyUrl:
              'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg'),
      Story(
          name: 'Flutter',
          storyUrl:
              'http://paranoidandroid.co/assets/wallpapers/2018/submerged_desktop_thumb.jpg'),
      Story(
          name: 'Flutter',
          storyUrl:
              'https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
      Story(
          name: 'Flutter',
          storyUrl:
              'https://images.pexels.com/photos/775201/pexels-photo-775201.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
    ];
    _cards = <Story>[
      Story(
          name: 'This is for demo',
          storyUrl: 'https://wallpaperaccess.com/full/1079198.jpg',
          email: 'waleedarshad@gmail.com'),
      Story(
        name: 'This is for demo',
        storyUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdx5NkTqe7sjEU1vNXBl-X_v8t5cBM21L-vOs_z6qwVu5JLHjKhw&s',
        email: 'flutter.khi@gmail.com',
      ),
      Story(
        name: 'Dart',
        storyUrl:
            'https://images.unsplash.com/photo-1535370976884-f4376736ab06?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
        email: 'flutterkarachi@gmail.com',
      ),
      Story(
        name: 'Dart',
        storyUrl: 'https://wallpaperplay.com/walls/full/7/c/f/34782.jpg',
        email: 'helloworld@gmail.com',
      ),
      Story(
        name: 'Dart',
        storyUrl:
            'https://pbs.twimg.com/profile_images/779305023507271681/GJJhYpD2_400x400.jpg',
        email: 'google@google.com',
      ),
      Story(
        name: 'Dart',
        storyUrl:
            'https://d33wubrfki0l68.cloudfront.net/495c5afa46922a41983f6442f54491c862bdb275/67c35/static/images/wallpapers/playground-07.png',
        email: 'gmail@google.com',
      ),
    ];
    _requests = <Story>[
      Story(
          name: 'This is for demo',
          storyUrl:
              'https://cdn.shopify.com/s/files/1/0407/6641/files/PDW_2560x1600_SPACEWALK.jpg?16884965820929473526'),
      Story(
          name: 'This is for demo',
          storyUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDkSuT0b8kv-uKwraId5H_B_R7_eLSpjJ8Kaah3XhgcDc116r_&s'),
      Story(
          name: 'Flutter',
          storyUrl:
              'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/fd7cf597-29e6-4db9-bde8-25fc850c6ec4/d4ywq58-0b3d335d-1839-488c-ad9f-464957d57d8f.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcL2ZkN2NmNTk3LTI5ZTYtNGRiOS1iZGU4LTI1ZmM4NTBjNmVjNFwvZDR5d3E1OC0wYjNkMzM1ZC0xODM5LTQ4OGMtYWQ5Zi00NjQ5NTdkNTdkOGYucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.KrGaOUYlIKp47LBzkNOAlZWqUpoJPGg4K9Rote_REj4'),
      Story(
          name: 'Flutter',
          storyUrl:
              'https://images.squarespace-cdn.com/content/v1/5925832e03596efb6d4b502a/1552467575287-2JMW8W2J3EJFYMP2QZQR/ke17ZwdGBToddI8pDm48kNvT88LknE-K9M4pGNO0Iqd7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1USOFn4xF8vTWDNAUBm5ducQhX-V3oVjSmr829Rco4W2Uo49ZdOtO_QXox0_W7i2zEA/DRG_Wallpaper_GlacialStrata.jpg?format=2500w'),
      Story(
          name: 'Flutter',
          storyUrl:
              'https://images.pexels.com/photos/556416/pexels-photo-556416.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
      Story(
          name: 'Flutter',
          storyUrl:
              'https://prodimages.the-neon-store.com/350/flex350/tns-f624531-razer-logo-neon-flex-sign.jpg'),
    ];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _populateData();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.teal,
          ),
        ),
        leading: Icon(
          Icons.clear_all,
          color: Colors.teal,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Theme.of(context).accentColor,
              child: Text(
                'P',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Center(
                    child: Text(
                      'Lets Workout Pasupathi!',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Center(
                    child: Text(
                      'Your Health Score is better than 6% of our users',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildScoreWidget(),
                _buildFitGirl1Widget(),
                _buildTrackingWidget(),
                _buildFitGirl2Widget(),
                _buildActivityWidget(),
                _buildStoryListView(),
                _buildBrandHighlightWidget(),
                _buildCardListView(),
                _buildRequestListView(),
              ],
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dehaze),
            title: Text('More Options'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_dining),
            title: Text('Food Tips'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            title: Text('Fitness Tips'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('More Info'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal[800],
        onTap: _onItemTapped,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  SizedBox _buildStoryListView() {
    return SizedBox(
      height: 110.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _stories.length,
        itemExtent: 200.0,
        itemBuilder: (context, index) {
          var item = _stories[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    item.storyUrl,
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black26,
                    BlendMode.darken,
                  ),
                ),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        item.name,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done,
                            color: Colors.white,
                          ),
                          VerticalDivider(),
                          Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildScoreWidget() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 8.0,
                            height: 8.0,
                            margin:
                                const EdgeInsets.only(left: 2.0, right: 2.0),
                            child: RawMaterialButton(
                              shape: new CircleBorder(),
                              elevation: 1.0,
                              fillColor: Colors.teal,
                              padding: const EdgeInsets.all(5.0),
                            ),
                          ),
                          Text(
                            " MAY: ",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          Text(
                            "20%",
                            style: TextStyle(color: Colors.teal, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 8.0,
                            height: 8.0,
                            margin:
                                const EdgeInsets.only(left: 2.0, right: 2.0),
                            child: RawMaterialButton(
                              shape: new CircleBorder(),
                              elevation: 1.0,
                              fillColor: Colors.teal,
                              padding: const EdgeInsets.all(5.0),
                            ),
                          ),
                          Text(
                            " Today: ",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                          Text(
                            "0%",
                            style: TextStyle(color: Colors.teal, fontSize: 14),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                          child: CircularPercentIndicator(
                        radius: 100.0,
                        lineWidth: 8.0,
                        percent: 1 / 5,
                        center: CircleAvatar(
                          radius: 35,
                          backgroundColor: Theme.of(context).accentColor,
                          child: Text(
                            'P',
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                        progressColor: Colors.green,
                      )),
                      Expanded(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          RadioListTile(
                            title: Text('Workout'),
                          ),
                          RadioListTile(
                            title: Text('8K steps'),
                          ),
                          RadioListTile(
                            title: Text('Activity'),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFitGirl1Widget() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          color: Colors.white,
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    color: Colors.white,
                    child: Image.asset(
                      "asset/fitness_girl2.png",
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Text(
                                      "Your customized workout plan is ready",
                                      style: Theme.of(context)
                                          .textTheme
                                          .title
                                          .copyWith(color: Colors.black),
                                    ),
                                    Divider(),
                                    RaisedButton(
                                      onPressed: () {},
                                      child: new Text(
                                        'Workout Now',
                                        style: new TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      color: Colors.teal,
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(20.0)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTrackingWidget() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 6,
          color: Colors.white,
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "0 ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .title
                                              .copyWith(color: Colors.teal),
                                        ),
                                        Text(
                                          "of 8k steps walked today",
                                          style: Theme.of(context)
                                              .textTheme
                                              .title
                                              .copyWith(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    Divider(),
                                    Row(
                                      children: [
                                        Text(
                                          'Information from ',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey),
                                        ),
                                        Text(
                                          'Google Fit',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.teal,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircularPercentIndicator(
                    radius: 60.0,
                    lineWidth: 8.0,
                    percent: 1 / 5,
                    center: Text(
                      '20 %',
                      style: TextStyle(fontSize: 12, color: Colors.teal),
                    ),
                    progressColor: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFitGirl2Widget() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          color: Colors.white,
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    Text(
                                      "Your personalised diet plan is ready",
                                      style: Theme.of(context)
                                          .textTheme
                                          .title
                                          .copyWith(color: Colors.black),
                                    ),
                                    Divider(),
                                    RaisedButton(
                                      onPressed: () {},
                                      child: new Text(
                                        'Check Out',
                                        style: new TextStyle(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      color: Colors.teal,
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(20.0)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    color: Colors.white,
                    child: Image.asset(
                      "asset/fitness_girl1.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActivityWidget() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 5,
        child: Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            color: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.local_drink,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          child:
                              Center(child: Text(' 0 of 10 classes consumed ')),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            color: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.add_circle_outline,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            color: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.directions_run,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          child: Center(child: Text(' Record an activity ')),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            color: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.add_circle_outline,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }

  Widget _buildBrandHighlightWidget() {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 4,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://wallpaperplay.com/walls/full/7/c/f/34782.jpg",
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black26,
              BlendMode.darken,
            ),
          ),
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://wallpaperplay.com/walls/full/7/c/f/34782.jpg",
                    ),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      Colors.black26,
                      BlendMode.darken,
                    ),
                  ),
                  color: Colors.grey,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              "India's first social media for fitness",
                              style: Theme.of(context)
                                  .textTheme
                                  .title
                                  .copyWith(color: Colors.white),
                            ),
                            RaisedButton(
                              onPressed: () {},
                              child: new Text(
                                'Go To Feed',
                                style: new TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                              color: Colors.teal,
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCardListView() {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 10.0, left: 4, right: 4, bottom: 4),
          child: Row(
            children: [
              Text(
                'What  other asked',
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _cards.length,
            itemExtent: 300.0,
            itemBuilder: (context, index) {
              var item = _cards[index];
              return Card(
                elevation: 4.0,
                child: ListTile(
                  leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        item.storyUrl,
                      )),
                  title: Text(
                    'Flutter',
                  ),
                  subtitle: Text('sample data for demo'),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildRequestListView() {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 10.0, left: 4, right: 4, bottom: 4),
          child: Row(
            children: [
              Text(
                'Expert Articles',
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        SizedBox(
          height: 150.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _requests.length,
            itemExtent: 300.0,
            itemBuilder: (context, index) {
              var item = _cards[index];
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        item.storyUrl,
                      ),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black26,
                        BlendMode.darken,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                item.storyUrl,
                              ),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                Colors.black26,
                                BlendMode.darken,
                              ),
                            ),
                            color: Colors.grey,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    item.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .title
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class Story {
  final String name;
  final String email;
  final String storyUrl;

  Story({this.name, this.storyUrl, this.email});
}
