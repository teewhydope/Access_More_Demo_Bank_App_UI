import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

const flashOn = 'FLASH ON';
const flashOff = 'FLASH OFF';
const frontCamera = 'FRONT CAMERA';
const backCamera = 'BACK CAMERA';

class QrScanScreen extends StatefulWidget {
  @override
  _QrScanScreenState createState() => _QrScanScreenState();
}

class _QrScanScreenState extends State<QrScanScreen> {
  Barcode result;
  var flashState = flashOn;
  var cameraState = frontCamera;
  QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.pauseCamera();
    } else if (Platform.isIOS) {
      controller.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 4,
            fit: FlexFit.loose,
            child: Stack(
              children: [
                _buildQrView(context),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(8),
                          child: IconButton(
                            icon: Icon(
                              Icons.flash_on,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              if (controller != null) {
                                controller.toggleFlash();
                                if (_isFlashOn(flashState)) {
                                  setState(() {
                                    flashState = flashOff;
                                  });
                                } else {
                                  setState(() {
                                    flashState = flashOn;
                                  });
                                }
                              }
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          child: IconButton(
                            icon: Icon(
                              Icons.camera_enhance_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              if (controller != null) {
                                controller.flipCamera();
                                if (_isBackCamera(cameraState)) {
                                  setState(() {
                                    cameraState = frontCamera;
                                  });
                                } else {
                                  setState(() {
                                    cameraState = backCamera;
                                  });
                                }
                              }
                            },
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(8),
                          child: IconButton(
                            icon: Icon(
                              Icons.pause,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              controller?.pauseCamera();
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          child: IconButton(
                            icon: Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              controller?.resumeCamera();
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                if (result != null)
                  Text(
                      'Barcode Type: ${describeEnum(result.format)}   Data: ${result.code}')
              ],
            ),
          ),
        ],
      ),
    );
  }

  bool _isFlashOn(String current) {
    return flashOn == current;
  }

  bool _isBackCamera(String current) {
    return backCamera == current;
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return NotificationListener<SizeChangedLayoutNotification>(
        onNotification: (notification) {
          Future.microtask(
              () => controller?.updateDimensions(qrKey, scanArea: scanArea));
          return false;
        },
        child: SizeChangedLayoutNotifier(
            key: const Key('qr-size-notifier'),
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
              overlay: QrScannerOverlayShape(
                borderColor: Colors.red,
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 10,
                cutOutSize: scanArea,
              ),
            )));
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
