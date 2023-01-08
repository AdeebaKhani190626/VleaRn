import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class OrientationScreen extends StatefulWidget {
  OrientationScreen({Key? key}) : super(key: key);

  @override
  _LoaderScreenState createState() => _LoaderScreenState();
}

class _LoaderScreenState extends State<OrientationScreen> {
  late UnityWidgetController _unityWidgetController;
  double _sliderValue = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meeting Orientation'),
        backgroundColor: Color(0xFF463263),
      ),
      body: Card(
        margin: const EdgeInsets.only(top:5),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        child: Stack(
          children: <Widget>[
            UnityWidget(
              onUnityCreated: onUnityCreated,
              onUnityMessage: onUnityMessage,
              useAndroidViewSurface: true,
            ),
            PointerInterceptor(
              child: Positioned(
                bottom: 30,
                left: 110,
                right: 110,
                child: Card(
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          if (MediaQuery.of(context).orientation ==
                              Orientation.portrait) {
                            SystemChrome.setPreferredOrientations([
                              DeviceOrientation.landscapeLeft,
                              DeviceOrientation.landscapeRight
                            ]);
                          } else if (MediaQuery.of(context).orientation ==
                              Orientation.landscape) {
                            SystemChrome.setPreferredOrientations(
                                [DeviceOrientation.portraitUp]);
                          }
                        },
                        child: Text("Change Orientation"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void setRotationSpeed(String speed) {
    _unityWidgetController.postMessage(
      'Cube',
      'SetRotationSpeed',
      speed,
    );
  }

  void onUnityMessage(message) {
    print('Received message from unity: ${message.toString()}');
  }

  // Callback that connects the created controller to the unity controller
  void onUnityCreated(controller) {
    this._unityWidgetController = controller;
  }
}
