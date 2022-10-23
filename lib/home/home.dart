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
      backgroundColor: "#FFFFFF".toColor(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderCustom(
                title: 'Selamat Datang,',
                upperTitle: 'Damar Yosa Aji',
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 15),
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
                    elevation: 0,
                    side: BorderSide(
                      width: 1.0,
                      color: "#DADEE3".toColor(),
                    ),
                    alignment: Alignment.centerLeft,
                    primary: "#FFFFFF".toColor(),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 45, 40),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                  ),
                ),
              ),
              CardListView(),
              CarouselSlider(
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
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardListView extends StatelessWidget {
  const CardListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, right: 25.0, bottom: 0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 350,
        child: GridView(
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // crossAxisSpacing: 10,
            // mainAxisSpacing: 10,
            childAspectRatio: 3.8 / 3,
          ),
          scrollDirection: Axis.vertical,
          children: [
            BuildCard("Layanan Kesehatan", "assets/icon/doctor.png"),
            BuildCard("Agenda Tindakan ", "assets/icon/calendar.png"),
            BuildCard("Skrining Kesehatan", "assets/icon/scan.png"),
            BuildCard("Informasi Pembayaran", "assets/icon/money.png"),
            BuildCard("Pusat Bantuan", "assets/icon/helpdesk.png"),
          ],
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
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
          Container(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
              child: ElevatedButton(
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
            ),
          ),
        ],
      ),
    );
  }
}
