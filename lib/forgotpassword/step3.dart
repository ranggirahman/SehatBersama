part of '../main.dart';

class ForgotTigaPage extends StatefulWidget {
  const ForgotTigaPage({Key? key}) : super(key: key);

  @override
  _ForgotTigaPageState createState() => _ForgotTigaPageState();
}

class _ForgotTigaPageState extends State<ForgotTigaPage> {
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
                  currentStep: 3,
                  size: 8,
                  selectedColor: "#36B36E".toColor(),
                  roundedEdges: Radius.circular(10),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                child: Text(
                  '3 dari 4 - OTP',
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
                  'Konfirmasi Kode OTP',
                  style: themeSubtitle1,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                child: Text(
                  'kode OTP telah dikirimkan melalui SMS ke nomor +62 853 **** 7726',
                  style: themeBodyText2,
                  textAlign: TextAlign.center,
                ),
              ),

              // pinput package we will use here
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                child: Pinput(
                  length: 4,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  defaultPinTheme: PinTheme(
                    height: 60.0,
                    width: 60.0,
                    textStyle: themeTitle1,
                    decoration: BoxDecoration(
                      color: "#EEEEEF".toColor(),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    height: 60.0,
                    width: 60.0,
                    textStyle: themeTitle1,
                    decoration: BoxDecoration(
                      color: "#CAC9C9".toColor(),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Kirim Ulang kode OTP (00:32)',
                            style: themeBodyTextLightSecondary,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(ForgotEmpatPage());
                  },
                  child: Text(
                    'Selanjutnya',
                    style: themeSubtitle2White,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: "#36B36E".toColor(),
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
