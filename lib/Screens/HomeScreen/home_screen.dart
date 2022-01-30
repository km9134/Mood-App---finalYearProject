import 'package:camera/camera.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moodful/components/background.dart';
import 'package:moodful/Screens/Login/login_screen.dart';
import 'package:moodful/components/camera_screen.dart';
import 'package:moodful/main.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Future<DocumentSnapshot<Map<String, dynamic>>>? _fetchedData;

  @override
  void initState() {
    super.initState();
    _fetchedData = getData();

  }



  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery
        .of(context)
        .size;

    return FutureBuilder(
      future: _fetchedData,
      builder: (BuildContext context,
          AsyncSnapshot<DocumentSnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.hasData) {
          return BackgroundLogoRight(

            text: "Home",
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Spacer(),
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 10,
                        child: Text(
                          "${snapshot.data!.data()!["firstName"]} \n\n "
                              "Glad you're back, please enter a mood for today.\n\n "
                              "Be sure to check the insights page for the most up to date mood analysis\n\n"
                              "The more you know the more control you have",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          await availableCameras().then(
                                (value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CameraPage(cameras: value,),
                              ),
                            ),
                          );
                        }, // handle your image tap here
                        child: Image.asset(
                          "assets/images/recordMoodLogo.jpg",
                          width: size.width * 0.5,

                          fit: BoxFit.cover, // this is the solution for border

                          height: 110.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> getData() async {
    var currentUser = FirebaseAuth.instance.currentUser;
    return await FirebaseFirestore.instance
        .collection('USER_TABLE')
        .doc(currentUser!.uid)
        .get();

  }

}