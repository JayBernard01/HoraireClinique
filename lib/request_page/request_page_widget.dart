import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
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
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FutureBuilder<dynamic>(
                future: worldTimeAPICall(
                  area: 'Europe',
                  location: 'London',
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  final textWorldTimeAPIResponse = snapshot.data;
                  return Text(
                    getJsonField(textWorldTimeAPIResponse, r'.datetime')
                        .toString(),
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  );
                },
              ),
              FutureBuilder<dynamic>(
                future: getCalendarEventsCall(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(child: CircularProgressIndicator());
                  }
                  final textGetCalendarEventsResponse = snapshot.data;
                  return Text(
                    getJsonField(textGetCalendarEventsResponse, r'..end')
                        .toString(),
                    style: FlutterFlowTheme.bodyText1.override(
                      fontFamily: 'Poppins',
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
