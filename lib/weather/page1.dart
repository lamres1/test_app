import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

var position;
var lastPosition;
var userpost = 'hello';

// ignore: prefer_typing_uninitialized_variables

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  var locationMessage = "";
  void getLocation() async {
    LocationPermission permission;
    permission = await Geolocator.requestPermission();
    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    lastPosition = await Geolocator.getLastKnownPosition();
    print(position);

    setState(() {
      locationMessage = "${position.latitude} , ${position.longitude}";
    });
  }

  final _textcontroller = TextEditingController();

//bool _
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                'https://www.whoa.in/20130907-Whoa/dark-clouds-wallpaper-for-mobile.jpg'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Color.fromARGB(0, 52, 161, 46),
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'Weather',
                style: TextStyle(
                    color: Color.fromARGB(255, 237, 236, 236),
                    fontSize: 43,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            controller: _textcontroller,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              fillColor: Colors.transparent,
                              filled: true,
                              hintText: "search location",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  _textcontroller.clear();
                                },
                                icon: const Icon(Icons.clear),
                              ),
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                userpost = _textcontroller.text;
                              });
                              print('${_textcontroller.text},  ${userpost}');
                            },
                            color: Colors.black,
                            child: const Text(
                              'Done',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: getLocation,
                              child: Icon(
                                Icons.location_pin,
                                color: Colors.red,
                                size: 30.0,
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 20),
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Get Location",
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 3, 227, 171)),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor:
                                    Color.fromARGB(255, 29, 219, 54),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      Navigator.pushNamed(context, 'register');
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
