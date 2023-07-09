import 'package:flutter/material.dart';
import 'package:flutter_2/Screens/Homescreen/ImageCarausel.dart';

import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../global/globals.dart';
import '../Location/locationpopup.dart';
import 'SectionTitle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  static const String routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const HomeScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const BottomNav_1(),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      body: MainScroll(
        name: username,
      ),
    );
  }
}

class MainScroll extends StatelessWidget {
  const MainScroll({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverAppBar(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        foregroundColor: const Color.fromARGB(255, 248, 248, 248),
        pinned: true,
        stretch: true,
        // snap: true,
        // floating: true,
        expandedHeight: 160,
        flexibleSpace: FlexibleSpaceBar(
          stretchModes: const <StretchMode>[
            StretchMode.zoomBackground,
            StretchMode.blurBackground,
            StretchMode.fadeTitle,
          ],
          centerTitle: true,
          expandedTitleScale: 1.0,
          titlePadding: const EdgeInsets.fromLTRB(0, 1, 0, 10),
          title: const SearchBar_Homepage(),
          background: GoodMorning(name: name),
        ),
      ),
      const SliverToBoxAdapter(
        child: ImageCarausal(),
      ),
      const SliverToBoxAdapter(
        child: Center(
          child: SectionTitle(
            title: 'Restaurants',
          ),
        ),
      ),
      const SliverToBoxAdapter(
        child: NightCanteen_card(),
      ),
      const SliverToBoxAdapter(
        child: TeaPost_card(),
      ),
      const SliverToBoxAdapter(
        child: Tapri_card(),
      ),
      const SliverToBoxAdapter(
        child: Juciliciouss_card(),
      ),
      const SliverToBoxAdapter(
        child: SizedBox(height: 100,),
      )
    ]);
  }
}

// ignore: camel_case_types
class BottomNav_1 extends StatefulWidget {
  const BottomNav_1({
    super.key,
  });

  @override
  State<BottomNav_1> createState() => _BottomNav_1State();
}

// ignore: camel_case_types
class _BottomNav_1State extends State<BottomNav_1> {
  // ignore: prefer_typing_uninitialized_variables

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        //

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                icon: Image.asset(
                  'assets/buttons/Home.png',
                  height: 30,
                  width: 30,
                )),
            const SizedBox(
              width: 60,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: SvgPicture.asset(
                  'assets/buttons/cart.svg',
                  height: 30,
                  width: 30,
                )),
            const SizedBox(
              width: 60,
            ),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/accounts');
                },
                icon: SvgPicture.asset(
                  'assets/buttons/User.svg',
                  height: 30,
                  width: 30,
                )),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class SearchBar_Homepage extends StatelessWidget {
  const SearchBar_Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/search');
      },
      child: const SearchBar(),
    );
  }
}

class SearchBar extends StatefulWidget {
  const SearchBar({
    super.key,
  });

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(25)),
      elevation: 2,
      child: Container(
        height: 45,
        width: 375,
        decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 243, 240, 1),
            border: Border(
                right: BorderSide(color: Color.fromRGBO(164, 73, 21, 1)),
                bottom: BorderSide(color: Color.fromRGBO(164, 73, 21, 1)),
                left: BorderSide(color: Color.fromRGBO(164, 73, 21, 1)),
                top: BorderSide(color: Color.fromRGBO(164, 73, 21, 1))),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset(
              'assets/buttons/Search_1.png',
              height: 25,
              width: 25,
            ),
            const SizedBox(
              width: 5,
            ),
            Text('Search Reataurants,Dishes and more',
                style: GoogleFonts.lato(
                    fontSize: 18, color: const Color.fromRGBO(164, 73, 21, 1))),
          ],
        ),
      ),
    );
  }
}

Future<void> _dialogBuilder(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return const popup();
    },
  );
}

class GoodMorning extends StatelessWidget {
  const GoodMorning({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(26, 0, 0, 0),
                  child: Text(
                    'Hi, $name ',
                    style: GoogleFonts.inter(
                        color: const Color.fromARGB(255, 152, 46, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(23, 0, 0, 0),
                      child: Image.asset('assets/buttons/location.png',
                          height: 14, width: 14),
                    ),
                    GestureDetector(
                      onTap: () => _dialogBuilder(context),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
                        child: Text(
                          'Deliver to: $Locationselected ',
                          style: GoogleFonts.inter(
                              color: const Color.fromARGB(255, 129, 129, 129),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 35, 18, 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(50)),
                      child: Image.asset(
                        'assets/images/logo.png',
                        height: 70,
                        width: 70,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

// ignore: camel_case_types

// ignore: camel_case_types

// ignore: camel_case_types
class Tapri_card extends StatelessWidget {
  const Tapri_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
          child: Material(
            elevation: 10,
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  color: Color.fromARGB(255, 255, 255, 255)),
              height: 240,
              width: 356,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/tapri');
                },
                child: Stack(children: [
                  Positioned(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: SizedBox(
                        height: 160,
                        width: 370,
                        child: Image.asset(
                          'assets/dispics/dishes/Manchurian.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 165,
                    left: 9,
                    child: Text(
                      'Tapri IITians ki',
                      style: GoogleFonts.inter(
                          color: const Color.fromARGB(255, 2, 2, 2),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Positioned(
                      top: 172,
                      right: 40,
                      child: Image.asset(
                        'assets/buttons/star.png',
                        height: 20,
                        width: 20,
                      )),
                  Positioned(
                    top: 195,
                    left: 9,
                    child: Text(
                      'Open till 11Pm',
                      style: GoogleFonts.inter(
                          color: const Color.fromRGBO(142, 140, 140, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Positioned(
                    top: 172,
                    right: 13,
                    child: Text(
                      '3.6',
                      style: GoogleFonts.inter(
                          color: const Color.fromARGB(255, 208, 184, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class NightCanteen_card extends StatelessWidget {
  const NightCanteen_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
          child: Material(
            elevation: 10,
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  color: Color.fromARGB(255, 255, 255, 255)),
              height: 240,
              width: 356,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/nightcanteen');
                },
                child: Stack(children: [
                  Positioned(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: SizedBox(
                        height: 160,
                        width: 370,
                        child: Image.asset(
                          'assets/dispics/dishes/shahi_paneer.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 165,
                    left: 9,
                    child: Text(
                      'Night Canteen',
                      style: GoogleFonts.inter(
                          color: const Color.fromARGB(255, 2, 2, 2),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Positioned(
                      top: 172,
                      right: 40,
                      child: Image.asset(
                        'assets/buttons/star.png',
                        height: 20,
                        width: 20,
                      )),
                  Positioned(
                    top: 195,
                    left: 9,
                    child: Text(
                      'Opens after 11Pm',
                      style: GoogleFonts.inter(
                          color: const Color.fromRGBO(142, 140, 140, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Positioned(
                    top: 172,
                    right: 13,
                    child: Text(
                      '4.1',
                      style: GoogleFonts.inter(
                          color: const Color.fromARGB(255, 208, 184, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class TeaPost_card extends StatelessWidget {
  const TeaPost_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
          child: Material(
            elevation: 10,
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  color: Color.fromARGB(255, 255, 255, 255)),
              height: 240,
              width: 356,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/teapost');
                },
                child: Stack(children: [
                  Positioned(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: SizedBox(
                        height: 160,
                        width: 370,
                        child: Image.asset(
                          'assets/dispics/dishes/Frenchfries.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 165,
                    left: 9,
                    child: Text(
                      'Tea Post',
                      style: GoogleFonts.inter(
                          color: const Color.fromARGB(255, 2, 2, 2),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Positioned(
                      top: 172,
                      right: 40,
                      child: Image.asset(
                        'assets/buttons/star.png',
                        height: 20,
                        width: 20,
                      )),
                  Positioned(
                    top: 195,
                    left: 9,
                    child: Text(
                      'Open till 2Am',
                      style: GoogleFonts.inter(
                          color: const Color.fromRGBO(142, 140, 140, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Positioned(
                    top: 172,
                    right: 13,
                    child: Text(
                      '3.9',
                      style: GoogleFonts.inter(
                          color: const Color.fromARGB(255, 208, 184, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class Juciliciouss_card extends StatelessWidget {
  const Juciliciouss_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
          child: Material(
            elevation: 10,
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  color: Color.fromARGB(255, 255, 255, 255)),
              height: 240,
              width: 356,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/juiciliciouscafe');
                },
                child: Stack(children: [
                  Positioned(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                      child: SizedBox(
                        height: 160,
                        width: 370,
                        child: Image.asset(
                          'assets/dispics/dishes/juiciliciouscafe.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 165,
                    left: 9,
                    child: Text(
                      'Juicilicious',
                      style: GoogleFonts.inter(
                          color: const Color.fromARGB(255, 2, 2, 2),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Positioned(
                      top: 172,
                      right: 40,
                      child: Image.asset(
                        'assets/buttons/star.png',
                        height: 20,
                        width: 20,
                      )),
                  Positioned(
                    top: 195,
                    left: 9,
                    child: Text(
                      'Open till 2Am',
                      style: GoogleFonts.inter(
                          color: const Color.fromRGBO(142, 140, 140, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Positioned(
                    top: 172,
                    right: 13,
                    child: Text(
                      '4.3',
                      style: GoogleFonts.inter(
                          color: const Color.fromARGB(255, 208, 184, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types