import 'dart:async';
import 'dart:ffi';
import 'package:flutter_2/BottomNavigationBar/bottom_nav_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2/screens/Homescreen/home_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Services/notifi.dart';
import '../../navbarbasics/nav.dart';

class Afterpayments1 extends StatefulWidget {
  const Afterpayments1({super.key});

  @override
  State<Afterpayments1> createState() => _Afterpayments1State();
}

class _Afterpayments1State extends State<Afterpayments1> {
  final String deliveryAgentName = "Abhinav Tiwari";
  final String deliveryAgentPhone = "9876543210";
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    notificationServices.InitialiseNotifications();
    super.initState();
  }

  bool istrue = true;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      if (istrue == false) {
        setState(() {
          istrue = true;
        });
      } else {
        setState(() {
          istrue = false;
        });
      } // Prints after 1 second.
    });
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const MyNavBar(),
      body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
          child: Stack(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Image.asset(
                'assets/buttons/Tracking_green.png',
                fit: BoxFit.fill,
              ),
            ),
            AnimatedOpacity(
              curve: Curves.linear,
              opacity: istrue ? 1 : 0,
              duration: const Duration(seconds: 1),
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: Image.asset(
                  'assets/buttons/Tracking_2.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(0, 255, 255, 255),
                  ),
                  child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                    SizedBox(
                        height: 400,
                        width: 500,
                        child: Lottie.asset(
                          'assets/rive/lottie_delivery.json',
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          height: 210,
                          width: 350,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(deliveryAgentName.toString(),
                                      style: GoogleFonts.inter(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromARGB(234, 0, 0, 0),
                                      )),
                                ],
                              ),
                              const SizedBox(
                                height: 9,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      final Uri url = Uri(
                                        scheme: 'tel',
                                        path: deliveryAgentPhone,
                                      );
                                      if (await canLaunchUrl(url)) {
                                        await launchUrl(url);
                                      } else {
                                        throw 'Could not launch $url';
                                      }
                                    },
                                    child: Container(
                                      color: const Color.fromRGBO(237, 237, 237, 1),
                                      height: 38,
                                      width: 200,
                                      child: Center(
                                        child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'assets/buttons/phone.png',
                                              height: 15,
                                              width: 15,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              deliveryAgentPhone.toString(),
                                              style: GoogleFonts.inter(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w400,
                                                  color: const Color.fromRGBO(
                                                      1, 62, 25, 0.75)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    color: const Color.fromRGBO(237, 237, 237, 1),
                                    height: 38,
                                    width: 200,
                                    child: GestureDetector(
                                      onTap: () {
                                        notificationServices.showNotifications(
                                            "Order Delivered", '');

                                        context.go('/Afterpayments2.dart');
                                      },
                                      child: Center(
                                        child: Text(
                                          "Order Delivered",
                                          style: GoogleFonts.inter(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,
                                              color: const Color.fromRGBO(
                                                  1, 62, 25, 0.75)),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Your food has been picked up by',
                                    style: GoogleFonts.inter(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(0, 0, 0, 0.5)),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    deliveryAgentName.toString(),
                                    style: GoogleFonts.inter(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromRGBO(0, 0, 0, 0.5)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    )
                  ]),
                ))
          ])),
    );
  }
}

// ignore: camel_case_types