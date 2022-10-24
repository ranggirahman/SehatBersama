part of '../main.dart';

class PesertaPage extends StatefulWidget {
  const PesertaPage({Key? key}) : super(key: key);

  @override
  _PesertaPageState createState() => _PesertaPageState();
}

class _PesertaPageState extends State<PesertaPage> {
  int _selectedIndex = 2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: "#FFFFFF".toColor(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'Daftar Peserta',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
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
                    HeroIcons.plus,
                    color: "#36B36E".toColor(),
                  ),
                  label: Text(
                    "Daftar Peserta Baru",
                    style: themeBodyText1,
                  ),
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
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

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 15),
                child: Column(
                  children: [
                    PromoCard(
                      varSerial: '3273222507980001',
                      varFullname: 'ILHAM RIZKI JULIANTO',
                      varStatus: 'PESERTA PEGAWAN SWASTA',
                      varFaskes: 'Klinik Sekejati',
                      varGender: 'Laki-Laki',
                      varBg: LinearGradient(
                        colors: [
                          "#1BA85A".toColor(),
                          "#3BC77A".toColor(),
                        ],
                      ),
                    ),
                    PromoCard(
                      varSerial: '3273222507980001',
                      varFullname: 'ALIKHA KHALISTA',
                      varStatus: 'ISTRI PEGAWAN SWASTA',
                      varFaskes: 'Klinik Sekejati',
                      varGender: 'Perempuan',
                      varBg: LinearGradient(
                        colors: [
                          "#1E4583".toColor(),
                          "#235DB9".toColor(),
                        ],
                      ),
                    ),
                    PromoCard(
                      varSerial: '3273222507980001',
                      varFullname: 'AAFIA KHALISTA ',
                      varStatus: 'ANAK PEGAWAN SWASTA',
                      varFaskes: 'Klinik Sekejati',
                      varGender: 'Perempuan',
                      varBg: LinearGradient(
                        colors: [
                          "#FF5C5C".toColor(),
                          "#FF7A7A".toColor(),
                        ],
                      ),
                    ),
                  ],
                ),
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
                      Get.offAll(() => HomePage());
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
                      Get.offAll(() => PesertaPage());
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

class PromoCard extends StatelessWidget {
  final String varSerial;
  final String varFullname;
  final String varStatus;
  final String varFaskes;
  final String varGender;
  final Gradient varBg;

  const PromoCard({
    Key? key,
    this.varSerial = "3273222507980001",
    this.varFullname = "DAMAR YOSA AJI",
    this.varStatus = "PESERTA PEGAWAI SWASTA",
    this.varFaskes = "Klinik Pratama",
    this.varGender = 'Laki-Laki',
    this.varBg = const LinearGradient(
      colors: [
        Color.fromARGB(255, 27, 168, 91),
        Color.fromARGB(255, 59, 199, 122),
      ],
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 207,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(2, 5),
              blurRadius: 4,
              spreadRadius: 0,
              color: Colors.grey.withOpacity(.3),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          gradient: varBg,
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: -250,
              left: -220,
              child: Opacity(
                opacity: 0.15,
                child: SvgPicture.asset(
                  'assets/logo/sehatbersamawhitemini.svg',
                  width: 550,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 6, 16, 16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/logo/sehatbersamawhite.svg',
                        width: 100,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Ubah",
                          style: themeCardText1,
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: "#FFFFFF".toColor(),
                          minimumSize: Size(40, 30),
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Text(
                      textAlign: TextAlign.left,
                      varSerial,
                      style: themeSubtitle1white,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    textAlign: TextAlign.left,
                    varFullname,
                    style: themeBodyText1white,
                  ),
                  Text(
                    textAlign: TextAlign.left,
                    varStatus,
                    style: themeCardText1white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Text(
                              textAlign: TextAlign.left,
                              "KELAS",
                              style: themeCardText1white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Text(
                              textAlign: TextAlign.left,
                              "1",
                              style: themeBodyText1white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Text(
                              textAlign: TextAlign.left,
                              "FASKES",
                              style: themeCardText1white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Text(
                              textAlign: TextAlign.left,
                              varFaskes,
                              style: themeBodyText1white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Text(
                              textAlign: TextAlign.left,
                              "JENIS KELAMIN",
                              style: themeCardText1white,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: Text(
                              textAlign: TextAlign.left,
                              varGender,
                              style: themeBodyText1white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
