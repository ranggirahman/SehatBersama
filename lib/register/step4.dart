part of '../main.dart';

class RegisEmpatPage extends StatefulWidget {
  const RegisEmpatPage({Key? key}) : super(key: key);

  @override
  _RegisEmpatPageState createState() => _RegisEmpatPageState();
}

class _RegisEmpatPageState extends State<RegisEmpatPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController? textController1;
  TextEditingController? textController2;

  late bool passwordVisibility1;
  late bool passwordVisibility2;
  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'Daftar',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 3,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                child: StepProgressIndicator(
                  totalSteps: 4,
                  currentStep: 4,
                  size: 8,
                  selectedColor: "#36B36E".toColor(),
                  roundedEdges: Radius.circular(10),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                child: Text(
                  '4 dari 4 - Syarat & Ketentuan',
                  style: themeBodyText1,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    '1. Syarat & Ketentuan',
                    style: themeBodyText1,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                    style: themeBodyTextLightSecondary,
                  ),
                  SizedBox(height: 20),
                  Text(
                    '2. Syarat & Ketentuan',
                    style: themeBodyText1,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                    style: themeBodyTextLightSecondary,
                  ),
                  SizedBox(height: 20),
                  Text(
                    '3. Syarat & Ketentuan',
                    style: themeBodyText1,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                    style: themeBodyTextLightSecondary,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
                blurRadius: 4,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.2)),
          ],
        ),
        child: BottomAppBar(
          color: "#FFFFFF".toColor(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 20),
            child: ElevatedButton(
              onPressed: () {
                Get.offAll(() => LoginPage());
              },
              child: Text(
                'Setuju',
                style: themeSubtitle2White,
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF04A04A),
                minimumSize: Size(100, 40),
                padding: EdgeInsets.symmetric(horizontal: 16),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
