import '../config/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class RegisSatuWidget extends StatefulWidget {
  const RegisSatuWidget({Key? key}) : super(key: key);

  @override
  _RegisSatuWidgetState createState() => _RegisSatuWidgetState();
}

class _RegisSatuWidgetState extends State<RegisSatuWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController? textController1;
  TextEditingController? textController2;
  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
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
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0x00FFFFFF),
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          'Daftar',
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
                  '1 dari 4 - Formulir Pendaftaran',
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
                  controller: textController1,
                  autofocus: false,
                  obscureText: false,
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: Text(
                  'Nomor HP',
                  style: themeBodyText1,
                ),
              ),
              Card(
                child: TextFormField(
                  controller: textController2,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Masukan Nomor HP',
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
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: ElevatedButton(
                  onPressed: () {},
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
