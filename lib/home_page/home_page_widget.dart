import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        drawer: Drawer(
          elevation: 16.0,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/998/600',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                child: Text(
                  'User Name',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 5.0, 10.0),
                      child: Icon(
                        Icons.exit_to_app,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                    Text(
                      'Log in / Log Out',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 5.0, 10.0),
                      child: Icon(
                        Icons.settings_outlined,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                    Text(
                      'Settings',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 5.0, 10.0),
                      child: Icon(
                        Icons.bookmarks_sharp,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                    Text(
                      'History',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 5.0, 10.0),
                      child: FaIcon(
                        FontAwesomeIcons.questionCircle,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                    ),
                    Text(
                      'About Us',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Color(0xFF5E17EB),
          automaticallyImplyLeading: true,
          leading: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              scaffoldKey.currentState!.openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 24.0,
            ),
          ),
          title: Text(
            'KUIKA',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).alternate,
                  fontSize: 20.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/3726445.jpg',
                      height: 300.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    FFAppState().update(() {
                      FFAppState().CBID = [];
                      FFAppState().stid = '';
                      FFAppState().QRVAL = '';
                    });
                    FFAppState().update(() {
                      FFAppState().stid = '-1';
                      FFAppState().QRVAL = 'NA';
                      FFAppState().addToCBID('0');
                    });
                    _model.qrval1 = await FlutterBarcodeScanner.scanBarcode(
                      '#C62828', // scanning line color
                      'Cancel', // cancel button text
                      true, // whether to show the flash icon
                      ScanMode.QR,
                    );

                    setState(() {
                      FFAppState().stid = _model.qrval1!;
                    });

                    context.pushNamed('List');

                    setState(() {});
                  },
                  text: 'Scan Store ID',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF5E17EB),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
