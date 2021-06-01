import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpPageWidget extends StatefulWidget {
  HelpPageWidget({Key key}) : super(key: key);

  @override
  _HelpPageWidgetState createState() => _HelpPageWidgetState();
}

class _HelpPageWidgetState extends State<HelpPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFE6E6E6),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        title: Text(
          'Help',
          style: FlutterFlowTheme.bodyText1.override(
            fontFamily: 'Source Sans Pro',
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
    );
  }
}
