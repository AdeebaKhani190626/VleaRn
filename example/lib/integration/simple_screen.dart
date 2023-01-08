import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:flutter_unity_widget_example/homePage.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';

class SimpleScreen extends StatefulWidget {
  SimpleScreen({Key? key}) : super(key: key);

  @override
  _SimpleScreenState createState() => _SimpleScreenState();
}

class _SimpleScreenState extends State<SimpleScreen> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();

  late UnityWidgetController _unityWidgetController;
  double _sliderValue = 0.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _unityWidgetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Meeting'),
        backgroundColor: Color(0xFF463263),
      ),
      body: Card(
          margin: const EdgeInsets.only(top:5),
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          child: Stack(
            children: [
              UnityWidget(
                onUnityCreated: _onUnityCreated,
                onUnityMessage: onUnityMessage,
                onUnitySceneLoaded: onUnitySceneLoaded,
                useAndroidViewSurface: false,
                borderRadius: BorderRadius.all(Radius.circular(70)),
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 500,
                height: 80,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ElevatedButton(
                    child: Icon(
                      Icons.airplay,
                      size: 30,
                    ),
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
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 70, left: 20),
                width: 500,
                height: 80,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: ElevatedButton(
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.cyan,
                        minimumSize: Size(55,35),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> HomePage()));
                    },
                  ),
                ),
              ),
            ],
          )),
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

  void onUnitySceneLoaded(SceneLoaded? scene) {
    print('Received scene loaded from unity: ${scene?.name}');
    print('Received scene loaded from unity buildIndex: ${scene?.buildIndex}');
  }

  // Callback that connects the created controller to the unity controller
  void _onUnityCreated(controller) {
    controller.resume();
    this._unityWidgetController = controller;
  }
}
