import '../config/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supercharged/supercharged.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class RegisEmpatWidget extends StatefulWidget {
  const RegisEmpatWidget({Key? key}) : super(key: key);

  @override
  _RegisEmpatWidgetState createState() => _RegisEmpatWidgetState();
}

class _RegisEmpatWidgetState extends State<RegisEmpatWidget> {
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
                currentStep: 4,
                selectedColor: "#36B36E".toColor(),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Text(
                  '4 dari 4 - Syarat & Ketentuan',
                  style: themeBodyText1,
                ),
              ),
              Container(
                child: SingleChildScrollView(
                  child: Text(
                      'The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints. Text displayed in a RichText widget must be explicitly styled. When picking which style to use, consider using DefaultTextStyle.of the current BuildContext to provide defaults. For more details on how to style text in a RichText widget, see the documentation for TextStyle. Consider using the Text widget to integrate with the DefaultTextStyle automatically. When all the text uses the same style, the default constructor is less verbose. The Text.rich constructor allows you to style multiple spans with the default text style while still allowing specified styles per span.The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints. Text displayed in a RichText widget must be explicitly styled. When picking which style to use, consider using DefaultTextStyle.of the current BuildContext to provide defaults. For more details on how to style text in a RichText widget, see the documentation for TextStyle. Consider using the Text widget to integrate with the DefaultTextStyle automatically. When all the text uses the same style, the default constructor is less verbose. The Text.rich constructor allows you to style multiple spans with the default text style while still allowing specified styles per span.The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints. Text displayed in a RichText widget must be explicitly styled. When picking which style to use, consider using DefaultTextStyle.of the current BuildContext to provide defaults. For more details on how to style text in a RichText widget, see the documentation for TextStyle. Consider using the Text widget to integrate with the DefaultTextStyle automatically. When all the text uses the same style, the default constructor is less verbose. The Text.rich constructor allows you to style multiple spans with the default text style while still allowing specified styles per span.The RichText widget displays text that uses multiple different styles. The text to display is described using a tree of TextSpan objects, each of which has an associated style that is used for that subtree. The text might break across multiple lines or might all be displayed on the same line depending on the layout constraints. Text displayed in a RichText widget must be explicitly styled. When picking which style to use, consider using DefaultTextStyle.of the current BuildContext to provide defaults. For more details on how to style text in a RichText widget, see the documentation for TextStyle. Consider using the Text widget to integrate with the DefaultTextStyle automatically. When all the text uses the same style, the default constructor is less verbose. The Text.rich constructor allows you to style multiple spans with the default text style while still allowing specified styles per span.'),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: ElevatedButton(
                  onPressed: () {},
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
            ],
          ),
        ),
      ),
    );
  }
}
