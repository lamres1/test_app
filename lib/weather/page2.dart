import 'package:flutter/material.dart';
//import 'package:geolocator/geolocator.dart';
import 'package:test_app/weather/model.dart';
import 'package:test_app/weather/page1.dart';
//import 'package:http/http.dart' as http;
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_app/weather/page3.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  WeatherApiClient client = WeatherApiClient();
  Weather? data;

  Future<void> getData() async {
    data = await client.getCurrentWeather(
        "${position.latitude}", "${position.longitude}");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: NetworkImage('https://wallpaperaccess.com/full/882062.jpg'),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 30),
              child: Text(
                'Current\nWeather ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 43,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          FutureBuilder(
                            future: getData(),
                            builder: (context, snapshot) {
                              return Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Temp  : ${data!.temp}k',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 195, 230, 221)),
                                  ),
                                  Text(
                                    'cityname : ${data!.cityName} ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 197, 233, 224)),
                                  ),
                                  Text(
                                    'feels_like : ${data!.feels_like} ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        // fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 181, 230, 217)),
                                  ),
                                ],
                              );
                            },
                          ),
                          SizedBox(
                            height: 140,
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
