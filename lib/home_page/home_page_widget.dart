import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../help_page/help_page_widget.dart';
import '../login_page_copy/login_page_copy_widget.dart';
import '../profil_page/profil_page_widget.dart';
import '../settings_page/settings_page_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFE6E6E6),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      drawer: Drawer(
        elevation: 16,
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 50, 15, 50),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        currentUserPhoto,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: AutoSizeText(
                        currentUserDisplayName,
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.title3.override(
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: AutoSizeText(
                        currentUserEmail,
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.subtitle1.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilPageWidget(),
                          ),
                        );
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.person,
                        ),
                        title: Text(
                          'Profil',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SettingsPageWidget(),
                          ),
                        );
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.settings,
                        ),
                        title: Text(
                          'Settings',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HelpPageWidget(),
                          ),
                        );
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.help,
                        ),
                        title: Text(
                          'Help',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await signOut();
                        await Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPageCopyWidget(),
                          ),
                          (r) => false,
                        );
                      },
                      child: ListTile(
                        leading: Icon(
                          Icons.login,
                        ),
                        title: Text(
                          'Disconnect',
                          style: FlutterFlowTheme.title3.override(
                            fontFamily: 'Poppins',
                          ),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF303030),
                          size: 20,
                        ),
                        tileColor: Color(0xFFF5F5F5),
                        dense: false,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
