part of '../main.dart';

class ForgotSatuPage extends StatefulWidget {
  const ForgotSatuPage({Key? key}) : super(key: key);

  @override
  _ForgotSatuPageState createState() => _ForgotSatuPageState();
}

class _ForgotSatuPageState extends State<ForgotSatuPage> {
  final SliderController controller = SliderController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  //? input
  TextEditingController textController = TextEditingController();

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
                  currentStep: 1,
                  size: 8,
                  selectedColor: "#36B36E".toColor(),
                  roundedEdges: Radius.circular(10),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 10),
                child: Text(
                  '1 dari 4 - Informasi Akun',
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
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Text(
                      'NIK',
                      style: themeBodyText1,
                    ),
                  ),
                  Card(
                    child: TextFormField(
                      controller: textController,
                      autofocus: false,
                      obscureText: false,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Masukan NIK',
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
                      ),
                      style: themeBodyText1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 10, 5, 0),
                    child: Container(
                      alignment: Alignment.center,
                      height: 310.0,
                      child: SliderCaptcha(
                        controller: controller,
                        title: 'Geser untuk selanjutnya',
                        titleStyle: TextStyle(
                          color: Color(0xFF04A04A),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        image: Image.asset(
                          'assets/captcha/1.jpg',
                          fit: BoxFit.fitWidth,
                        ),
                        colorBar: "DFE1E2".toColor(),
                        colorCaptChar: "6F656D".toColor(),
                        onConfirm: (value) async {
                          if ((textController.text != "" &&
                              textController.text != null &&
                              textController.text.isNotEmpty)) {
                            if (value) {
                              Get.to(ForgotDuaPage());
                            } else {
                              Get.snackbar(
                                "Captcha",
                                'Pastikan posisi puzzle sesuai dengan tempatnya.',
                                snackPosition: SnackPosition.BOTTOM,
                                isDismissible: true,
                                duration: Duration(seconds: 3),
                                margin: EdgeInsets.all(20),
                              );
                              controller.create.call();
                            }
                          } else {
                            Get.snackbar(
                              "Alert",
                              'Kolom NIK tidak boleh kosong.',
                              snackPosition: SnackPosition.BOTTOM,
                              isDismissible: true,
                              duration: Duration(seconds: 3),
                              margin: EdgeInsets.all(20),
                            );
                            controller.create.call();
                          }
                        },
                      ),
                    ),
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
