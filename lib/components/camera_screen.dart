import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moodful/Screens/HomeScreen/home_screen.dart';
import 'package:moodful/Screens/Login/login_screen.dart';
import 'package:moodful/main.dart';

import '../constants.dart';

class CameraPage extends StatefulWidget {
  final List<CameraDescription>? cameras;

  const CameraPage({this.cameras, Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;

  // used to increment camera switch tap
  int cameraIconTap = 0;
  XFile? pictureFile;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.cameras![0],
      ResolutionPreset.veryHigh,
    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    if (!controller.value.isInitialized) {
      return const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          title: Text('AppBar'),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreen()),
              ).then((value) => setState(() {}));
              print("refresh done ");
            },
            icon: Icon(Icons.home),
          ),
          actions: [
            IconButton(
              onPressed: () {
                //increment on tap, calculate modulus, pass to widget.camera. 0 == rear camera, 1 == front camera
                cameraIconTap++;
                int modulusTap;
                modulusTap = cameraIconTap % 2;
                if (widget.cameras!.length > 1) {
                  setState(() {
                    controller = CameraController(
                        widget.cameras![modulusTap], ResolutionPreset.veryHigh);
                  });
                  controller.initialize().then((_) {
                    if (!mounted) {
                      return;
                    }
                    setState(() {});
                  });
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('No secondary camera found'),
                    duration: Duration(seconds: 2),
                  ));
                }
              },
              icon: const Icon(Icons.cameraswitch),
            ),
          ],
        ),
        body: Center(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
              child: Column(
                children: [
                  Center(
                    child: SizedBox(
                      height: //400
                      size.height / controller.value.aspectRatio,
                      width: size.width * 1.3 / controller.value.aspectRatio,
                      child: AspectRatio(
                        aspectRatio: controller.value.aspectRatio,
                        child: CameraPreview(controller),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () async {
                  pictureFile = await controller.takePicture();
                  setState(() {});
                },
                child: const Text('Capture Image'),
              ),
            ),

            if (pictureFile != null)
              Image.network(
                pictureFile!.path,
                height: 200,
              )
            //Android/iOS
            // Image.file(File(pictureFile!.path)))
          ],
        )));
  }
}
