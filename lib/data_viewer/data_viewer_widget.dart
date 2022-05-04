import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataViewerWidget extends StatefulWidget {
  const DataViewerWidget({
    Key key,
    this.blockRef,
  }) : super(key: key);

  final DocumentReference blockRef;

  @override
  _DataViewerWidgetState createState() => _DataViewerWidgetState();
}

class _DataViewerWidgetState extends State<DataViewerWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BlocksRecord>(
      stream: BlocksRecord.getDocument(widget.blockRef),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        final dataViewerBlocksRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                'toz52mf7' /* Data Viewer */,
              ),
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Open Sans',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2,
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Builder(
                            builder: (context) {
                              final keys = dataViewerBlocksRecord.dataKeys
                                      .toList()
                                      ?.toList() ??
                                  [];
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children:
                                    List.generate(keys.length, (keysIndex) {
                                  final keysItem = keys[keysIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Text(
                                      keysItem,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0x84000000),
                                            fontSize: 16,
                                          ),
                                    ),
                                  );
                                }),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          child: Builder(
                            builder: (context) {
                              final values = dataViewerBlocksRecord.dataValues
                                      .toList()
                                      ?.toList() ??
                                  [];
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                children:
                                    List.generate(values.length, (valuesIndex) {
                                  final valuesItem = values[valuesIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 10, 10, 10),
                                    child: Text(
                                      valuesItem,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0x84000000),
                                            fontSize: 16,
                                          ),
                                    ),
                                  );
                                }),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
