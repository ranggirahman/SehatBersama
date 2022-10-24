part of '../main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/banner/1.jpg',
      'assets/banner/2.jpg',
      'assets/banner/3.jpg',
      'assets/banner/4.jpg',
      'assets/banner/5.jpg',
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(33),
          child: HeaderCustom(
            title: 'Selamat Datang,',
            upperTitle: 'Damar Yosa Aji',
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            children: [
              // Isi Biodata
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 15),
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: HeroIcon(
                    HeroIcons.informationCircle,
                    color: "#36B36E".toColor(),
                  ),
                  label: Text(
                    "Lengkapi Biodata Anda",
                    style: themeBodyText1,
                  ),
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    elevation: 0,
                    backgroundColor: Colors.white,
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 45, 40),
                    side: BorderSide(
                      width: 1.0,
                      color: "#DADEE3".toColor(),
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ), // NEW
                  ),
                ),
              ),

              // Banner
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 100,
                    viewportFraction: 1,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 1),
                  ),
                  items: imgList.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: "#DADEE3".toColor()),
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              i,
                              fit: BoxFit.cover,
                              width: 1000,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),

              GridView(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 4 / 3,
                ),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics:
                    NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                children: <Widget>[
                  BuildCard("Layanan Kesehatan", "assets/icon/doctor.svg"),
                  BuildCard("Agenda Tindakan ", "assets/icon/calendar.svg"),
                  BuildCard("Skrining Kesehatan", "assets/icon/scan.svg"),
                  BuildCard("Informasi Pembayaran", "assets/icon/wallet.svg"),
                  BuildCard("Pusat Bantuan", "assets/icon/helpdesk.svg"),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                blurRadius: 4,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.3)),
          ],
        ),
        child: BottomAppBar(
          color: "#FFFFFF".toColor(),
          child: SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBottomBar(
                    text: "Home",
                    iconVar: HeroIcons.home,
                    selected: _selectedIndex == 0,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                  ),
                  IconBottomBar(
                    text: "Konsultasi",
                    iconVar: HeroIcons.chatBubbleLeftRight,
                    selected: _selectedIndex == 1,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                  ),
                  IconBottomBar(
                    text: "Peserta",
                    iconVar: HeroIcons.users,
                    selected: _selectedIndex == 2,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    },
                  ),
                  IconBottomBar(
                    text: "Artikel",
                    iconVar: HeroIcons.newspaper,
                    selected: _selectedIndex == 3,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    },
                  ),
                  IconBottomBar(
                    text: "Setelan",
                    iconVar: HeroIcons.cog6Tooth,
                    selected: _selectedIndex == 4,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 4;
                      });
                      Get.offAll(() => LoginPage());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HeaderCustom extends StatelessWidget {
  final String title;
  final String upperTitle;
  const HeaderCustom({required this.title, required this.upperTitle, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Container(
                  width: 50,
                  height: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/dummy/avatar.jpg',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 0, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: themeBodyTextVeryLightSecondary),
                    Text(upperTitle, style: themeBodyText1)
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: Icon(
              Icons.notifications,
              size: 25,
              color: Colors.white,
            ),
            style: ElevatedButton.styleFrom(
              primary: "#36BA71".toColor(),
              minimumSize: Size(40, 50),
              padding: EdgeInsets.symmetric(horizontal: 12),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
