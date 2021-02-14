import 'package:camera_deep_ar/camera_deep_ar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demos/private_values.dart';

class FaceAr extends StatefulWidget {
  static const String id = 'face_ar';
  @override
  _FaceArState createState() => _FaceArState();
}

class _FaceArState extends State<FaceAr> {
  CameraDeepArController cameraDeepArController;
  int effects = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CameraDeepAr(
            onCameraReady: (isReady) {
              setState(() {});
            },
            onImageCaptured: (path) {
              setState(() {});
            },
            onVideoRecorded: (path) {
              setState(() {});
            },
            androidLicenceKey: faceArApiKey,
            iosLicenceKey: faceArApiKey,
            cameraDeepArCallback: (c) async {
              cameraDeepArController = c;
              setState(() {});
            },
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: FloatingActionButton(
                onPressed: () => {
                  cameraDeepArController.changeMask(effects),
                  if (effects == 7)
                    {
                      effects = 0,
                    },
                  effects++,
                },
                child: Icon(Icons.face),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
