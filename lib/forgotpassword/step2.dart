part of '../main.dart';

class ForgotDuaPage extends StatefulWidget {
  const ForgotDuaPage({Key? key}) : super(key: key);

  @override
  _ForgotDuaPageState createState() => _ForgotDuaPageState();
}

class _ForgotDuaPageState extends State<ForgotDuaPage> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // getting the size of the window
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'Lupa Password',
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
                  currentStep: 2,
                  size: 8,
                  selectedColor: "#36B36E".toColor(),
                  roundedEdges: Radius.circular(10),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                child: Text(
                  '2 dari 4 - Metode Pemulihan',
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
                child: ElevatedButton.icon(
                  onPressed: () {
                    Get.to(ForgotTigaPage());
                  },
                  icon: Icon(
                    Icons.phone,
                    color: "#36B36E".toColor(),
                  ),
                  label: Text(
                    "Nomor HP 0853****7726",
                    style: themeBodyText1,
                  ),
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.centerLeft, //
                    primary: "#FFFFFF".toColor(),
                    minimumSize: Size(100, 60),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Get.to(ForgotTigaBPage());
                  },
                  icon: Icon(
                    Icons.email,
                    color: "#36B36E".toColor(),
                  ),
                  label: Text(
                    "Email dam****ji@gmail.com",
                    style: themeBodyText1,
                  ),
                  style: ElevatedButton.styleFrom(
                    alignment: Alignment.centerLeft, //
                    primary: "#FFFFFF".toColor(),
                    minimumSize: Size(100, 60),
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
