import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RequestPageWidget extends StatefulWidget {
  RequestPageWidget({Key key}) : super(key: key);

  @override
  _RequestPageWidgetState createState() => _RequestPageWidgetState();
}

class _RequestPageWidgetState extends State<RequestPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
    );
  }
}
