import '../config/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ForgotDuaWidget extends StatefulWidget {
  const ForgotDuaWidget({Key? key}) : super(key: key);

  @override
  _ForgotDuaWidgetState createState() => _ForgotDuaWidgetState();
}

class _ForgotDuaWidgetState extends State<ForgotDuaWidget> {
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
                currentStep: 2,
                selectedColor: "#36B36E".toColor(),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  '2 dari 4 - Metode Pemulihan',
                  style: themeBodyText1,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                child: ElevatedButton.icon(
                  onPressed: () {},
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
                  onPressed: () {},
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
