// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_import, unused_element

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _currentTabIndex = 0;

  @override
  void initState() {
    _tabController =
        TabController(length: 7, vsync: this, initialIndex: _currentTabIndex);
    super.initState();
  }

//make call
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  //web open
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            'DTI Cake Shop',
            style: GoogleFonts.kanit(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                exit(0); //exit app
              },
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.grey[300],
            indicatorColor: Colors.yellow,
            indicatorWeight: 10.0,
            tabAlignment: TabAlignment.start,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.shop_outlined,
                ),
                text: 'Truly Scrumptious',
              ),
              Tab(
                icon: Icon(
                  Icons.shop_outlined,
                ),
                text: 'Ha Tien Café',
              ),
              Tab(
                icon: Icon(
                  Icons.shop_outlined,
                ),
                text: 'อะเค้ก',
              ),
              Tab(
                icon: Icon(
                  Icons.shop_outlined,
                ),
                text: 'Bite Me Softly',
              ),
              Tab(
                icon: Icon(
                  Icons.shop_outlined,
                ),
                text: 'Little Baker Café and Studio',
              ),
              Tab(
                icon: Icon(
                  Icons.shop_outlined,
                ),
                text: 'Chez Shibata 365',
              ),
              Tab(
                icon: Icon(
                  Icons.shop_outlined,
                ),
                text: 'Patchwork BKK',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'SAU Cake Shop',
                  style: GoogleFonts.kanit(),
                ),
                accountEmail: Text(
                  'แอปสำหรับคนชอบเค้ก',
                  style: GoogleFonts.kanit(),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bg_welcome.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1423842571/photo/ondeh-ondeh-swiss-roll.jpg?s=612x612&w=is&k=20&c=zD1NK2nggJVFe5bHD-47Fqifr2nYaOYo6TtKlboQf7E=',
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/1423842571/photo/ondeh-ondeh-swiss-roll.jpg?s=612x612&w=is&k=20&c=zD1NK2nggJVFe5bHD-47Fqifr2nYaOYo6TtKlboQf7E=',
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/1423842571/photo/ondeh-ondeh-swiss-roll.jpg?s=612x612&w=is&k=20&c=zD1NK2nggJVFe5bHD-47Fqifr2nYaOYo6TtKlboQf7E=',
                    ),
                  ),
                ],
              ),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 0;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck01.png',
                  ),
                ),
                title: Text(
                  'Truly Scrumptious',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 1;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck02.png',
                  ),
                ),
                title: Text(
                  'Ha Tien Café',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 2;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck03.png',
                  ),
                ),
                title: Text(
                  'อะเค้ก',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 3;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck04.png',
                  ),
                ),
                title: Text(
                  'Bite Me Softly',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 4;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck05.png',
                  ),
                ),
                title: Text(
                  'Little Baker Café and Studio',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 5;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck06.png',
                  ),
                ),
                title: Text(
                  'Chez Shibata 365',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  setState(() {
                    _tabController.index = 6;
                  });
                  Navigator.pop(context);
                },
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/ck07.png',
                  ),
                ),
                title: Text(
                  'Patchwork BKK',
                ),
                trailing: Icon(
                  FontAwesomeIcons.shop,
                  color: Colors.purple,
                ),
              ),
              Divider(),
              ListTile(
                onTap: () {
                  exit(0);
                },
                leading: Icon(
                  Icons.exit_to_app,
                ),
                title: Text(
                  'ออกจากแอพ',
                  style: GoogleFonts.kanit(),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            showShopWidget('เค้กบ้านสวน', 'assets/images/ck01.png',
                '0554432465', 'http://www.sau.ac.th', '13.199825,100.23861'),
            showShopWidget('เค้กหร่อยแรง', 'assets/images/ck02.png',
                '0554432465', 'http://www.sau.ac.th', '13.199825,100.23861'),
            showShopWidget('เค้กหว่าพื้อน่องบ้าว', 'assets/images/ck03.png',
                '0554432465', 'http://www.sau.ac.th', '13.199825,100.23861'),
            showShopWidget('เค้กกะเจ้า', 'assets/images/ck04.png', '0554432465',
                'http://www.sau.ac.th', '13.199825,100.23861'),
            showShopWidget('เค้กบ่เป็นหยัง', 'assets/images/ck05.png',
                '0554432465', 'http://www.sau.ac.th', '13.199825,100.23861'),
            showShopWidget('เค้กสวัสดี', 'assets/images/ck06.png', '0554432465',
                'http://www.sau.ac.th', '13.199825,100.23861'),
            showShopWidget('เค้กน้ำตาลในเส้นเลือด', 'assets/images/ck07.png',
                '0554432465', 'http://www.sau.ac.th', '13.199825,100.23861'),
          ],
        ),
      ),
    );

    //Showshopwidget is layer of Shop
  }

  Widget showShopWidget(String shopName, String shopImp, String shopPhone,
      String shopWeb, String shopGPS) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          Text(
            shopName,
            style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.height * 0.04,
                fontWeight: FontWeight.bold),
          ),
          Image.asset(
            shopImp,
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _makePhoneCall(shopPhone);
              },
              tileColor: Colors.red,
              leading: Icon(
                Icons.phone,
              ),
              title: Text(
                shopPhone,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(
                  Uri.parse(shopWeb),
                );
              },
              tileColor: Colors.red,
              leading: Icon(
                Icons.web,
              ),
              title: Text(
                shopWeb,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              right: 50.0,
            ),
            child: ListTile(
              onTap: () {
                _launchInBrowser(
                  Uri.parse('https://www.google.com/maps/@' + shopGPS + ',17z'),
                );
              },
              tileColor: Colors.red,
              leading: Icon(
                Icons.gps_fixed,
              ),
              title: Text(
                'นำทางไปที่ร้าน',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
