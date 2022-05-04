import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../product_info/product_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  var productID = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/images/pngwing.com.png',
              width: MediaQuery.of(context).size.width * 0.9,
              fit: BoxFit.cover,
            ),
            InkWell(
              onTap: () async {
                productID = await FlutterBarcodeScanner.scanBarcode(
                  '#C62828', // scanning line color
                  FFLocalizations.of(context).getText(
                    '2ezkbz7p' /* Cancel */,
                  ), // cancel button text
                  true, // whether to show the flash icon
                  ScanMode.QR,
                );

                if ((productID != null) && (productID != '')) {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductInfoWidget(),
                    ),
                  );
                }

                setState(() {});
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryText,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                      child: Icon(
                        Icons.qr_code_scanner,
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        size: 80,
                      ),
                    ),
                    Text(
                      FFLocalizations.of(context).getText(
                        'xl3b11hc' /* Tap to Scan */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    FFLocalizations.of(context).getText(
                      '0gllf474' /* Select App Language: */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            setAppLanguage(context, 'en');
                          },
                          text: FFLocalizations.of(context).getText(
                            'hmkp2zk0' /* English */,
                          ),
                          options: FFButtonOptions(
                            width: 100,
                            height: 30,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            setAppLanguage(context, 'hi');
                          },
                          text: FFLocalizations.of(context).getText(
                            'ygds3pda' /* Hindi */,
                          ),
                          options: FFButtonOptions(
                            width: 100,
                            height: 30,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                    ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
