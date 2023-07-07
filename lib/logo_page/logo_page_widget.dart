import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'logo_page_model.dart';
export 'logo_page_model.dart';

class LogoPageWidget extends StatefulWidget {
  const LogoPageWidget({Key? key}) : super(key: key);

  @override
  _LogoPageWidgetState createState() => _LogoPageWidgetState();
}

class _LogoPageWidgetState extends State<LogoPageWidget>
    with TickerProviderStateMixin {
  late LogoPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1500));

      context.goNamed('HomePage');
    });
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/KUIKA-removebg-preview.png',
                        width: 172.0,
                        height: 193.0,
                        fit: BoxFit.cover,
                      ),
                    ).animateOnPageLoad(
                        animationsMap['imageOnPageLoadAnimation']!),
                  ],
                ),
                Text(
                  'KUIKA',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Ubuntu',
                        fontSize: 30.0,
                      ),
                ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
