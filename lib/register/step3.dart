part of '../main.dart';

class RegisTigaPage extends StatefulWidget {
  const RegisTigaPage({Key? key}) : super(key: key);

  @override
  _RegisTigaPageState createState() => _RegisTigaPageState();
}

class _RegisTigaPageState extends State<RegisTigaPage> {
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
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                child: StepProgressIndicator(
                  totalSteps: 4,
                  currentStep: 3,
                  size: 8,
                  selectedColor: "#36B36E".toColor(),
                  roundedEdges: Radius.circular(10),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                child: Text(
                  '3 dari 4 - Buat Password',
                  style: themeBodyText1,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background/2.png'),
            fit: BoxFit.fill,
          ),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  'Password Baru',
                  style: themeBodyText1,
                ),
              ),
              Card(
                child: TextFormField(
                  controller: textController1,
                  autofocus: false,
                  obscureText: !passwordVisibility1,
                  decoration: InputDecoration(
                    hintText: 'Password Baru',
                    contentPadding: EdgeInsets.all(10.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: "C9CACA".toColor(),
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: "EEEEEF".toColor(),
                        width: 1,
                      ),
                    ),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility1 = !passwordVisibility1,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        passwordVisibility1
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                  ),
                  style: themeBodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Text(
                  'Konfirmasi Password Baru',
                  style: themeBodyText1,
                ),
              ),
              Card(
                child: TextFormField(
                  controller: textController2,
                  autofocus: false,
                  obscureText: !passwordVisibility2,
                  decoration: InputDecoration(
                    hintText: 'Konfirmasi Password Baru',
                    contentPadding: EdgeInsets.all(10.0),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: "C9CACA".toColor(),
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: "EEEEEF".toColor(),
                        width: 1,
                      ),
                    ),
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility2 = !passwordVisibility2,
                      ),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        passwordVisibility2
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    ),
                  ),
                  style: themeBodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(RegisEmpatPage());
                  },
                  child: Text(
                    'Selanjutnya',
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
            ],
          ),
        ),
      ),
    );
  }
}
