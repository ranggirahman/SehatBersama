import '../config/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:pinput/pinput.dart';

class ForgotTigaWidget extends StatefulWidget {
  const ForgotTigaWidget({Key? key}) : super(key: key);

  @override
  _ForgotTigaWidgetState createState() => _ForgotTigaWidgetState();
}

class _ForgotTigaWidgetState extends State<ForgotTigaWidget> {
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
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      // backgroundColor: Colors.white,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        // backgroundColor: Color(0x00FFFFFF),
        backgroundColor: Colors.transparent,
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
          padding: EdgeInsetsDirectional.fromSTEB(10, 90, 10, 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              StepProgressIndicator(
                totalSteps: 4,
                currentStep: 3,
                selectedColor: "#36B36E".toColor(),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  '3 dari 4 - OTP',
                  style: themeBodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
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
            ],
          ),
        ),
      ),
    );
  }
}
