import '../config/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:slider_captcha/slider_capchar.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ForgotSatuWidget extends StatefulWidget {
  const ForgotSatuWidget({Key? key}) : super(key: key);

  @override
  _ForgotpSatuWidgetState createState() => _ForgotpSatuWidgetState();
}

class _ForgotpSatuWidgetState extends State<ForgotSatuWidget> {
  final SliderController controller = SliderController();
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0x00FFFFFF),
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'Lupa Password',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
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
          padding: EdgeInsetsDirectional.fromSTEB(10, 100, 10, 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              StepProgressIndicator(
                totalSteps: 4,
                currentStep: 1,
                selectedColor: "#36B36E".toColor(),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  '1 dari 4 - Informasi Akun',
                  style: themeBodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
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
                      debugPrint(value.toString());
                      return await Future.delayed(const Duration(seconds: 5))
                          .then(
                        (value) {
                          controller.create.call();
                        },
                      );
                    },
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
