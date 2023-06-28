// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_2/screens/Restaurants/NighCanteen/Cart(SUM)/sum.dart';
import 'package:google_fonts/google_fonts.dart';

import 'NightCanteen_dishes.dart';

// ignore: camel_case_types
class Main_Course extends StatelessWidget {
  const Main_Course({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      children: [
        ExpansionTile(
          backgroundColor: const Color.fromARGB(255, 238, 238, 238),
          collapsedBackgroundColor: const Color.fromARGB(255, 238, 238, 238),
          tilePadding: const EdgeInsets.fromLTRB(22, 0, 220, 0),
          title: Text(
            'Main Course',
            style: GoogleFonts.inter(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          initiallyExpanded: true,
          children: const <Widget>[
            // ListTile(title: Text('This is tile number 1')),
            Column(
              children: [
                Paneer_Butter_Masala(),
                SizedBox(
                  height: 20,
                ),
                MutterMushroom(),
                SizedBox(
                  height: 20,
                ),
                ChickenBiryani(),
                SizedBox(
                  height: 20,
                ),
                ChickenCurry(),
                SizedBox(
                  height: 20,
                ),
                KajuCurry(),
                SizedBox(
                  height: 20,
                ),
                Shahipaneer(),
                SizedBox(
                  height: 20,
                ),
              ],
            )
          ],
        ),
      ],
    ));
  }
}

// ignore: camel_case_types
class Paneer_Butter_Masala extends StatefulWidget {
  const Paneer_Butter_Masala({
    super.key,
  });

  @override
  State<Paneer_Butter_Masala> createState() => _Paneer_Butter_MasalaState();
}

// ignore: camel_case_types
class _Paneer_Butter_MasalaState extends State<Paneer_Butter_Masala> {
  bool isTap = false;
  double top = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 400,
        height: 130,
        child: Stack(
          children: [
            Positioned(
                top: 10,
                left: 10,
                child: Image.asset(
                  'assets/buttons/veg.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 6,
                left: 40,
                child: Text(
                  Veg[0],
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 36,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delicious Paneer cubes serverd',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'with craving orange gravy',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            Positioned(
                top: 80,
                left: 60,
                child: Text(Veg_Price[0].toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400))),
            Positioned(
                top: 83,
                left: 40,
                child: Image.asset(
                  'assets/buttons/Rupee.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 0,
                right: 20,
                child: Image.asset(
                  'assets/dispics/dishes/paneer_butter_masala.png',
                  height: 130,
                  width: 117,
                )),
            Positioned(
                top: top,
                right: 10,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isTap = true;
                        Items[4]++;
                        top = 20;
                      });
                    },
                    child: PBM_GD())),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Container PBM_GD() {
    if (Items[4] == 0) {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 42, 252, 0),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Image.asset(
          'assets/buttons/plus.png',
          height: 30,
          width: 30,
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 122, 56),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Items[4]++;

                  if (Items[4] == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/plus.png',
                height: 30,
                width: 30,
              ),
            ),
            Text(Items[4].toString()),
            GestureDetector(
              onTap: () {
                setState(() {
                  Items[4]--;
                  if (Items[4] == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/minus.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      );
    }
  }
}

class MutterMushroom extends StatefulWidget {
  const MutterMushroom({
    super.key,
  });

  @override
  State<MutterMushroom> createState() => _MutterMushroom();
}

// ignore: camel_case_types
class _MutterMushroom extends State<MutterMushroom> {
  bool isTap = false;
  double top = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 400,
        height: 130,
        child: Stack(
          children: [
            Positioned(
                top: 10,
                left: 10,
                child: Image.asset(
                  'assets/buttons/veg.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 6,
                left: 40,
                child: Text(
                  Veg[1],
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 36,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delicious Paneer cubes serverd',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'with craving orange gravy',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            Positioned(
                top: 80,
                left: 60,
                child: Text(Veg_Price[2].toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400))),
            Positioned(
                top: 83,
                left: 40,
                child: Image.asset(
                  'assets/buttons/Rupee.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 0,
                right: 20,
                child: Image.asset(
                  'assets/dispics/dishes/Matar-mushroom.jpg',
                  height: 130,
                  width: 117,
                )),
            Positioned(
                top: top,
                right: 10,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isTap = true;
                        Items[5]++;
                        top = 20;
                      });
                    },
                    child: PBM_GD())),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Container PBM_GD() {
    if (Items[5] == 0) {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 42, 252, 0),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Image.asset(
          'assets/buttons/plus.png',
          height: 30,
          width: 30,
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 122, 56),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Items[5]++;

                  if (Items[5] == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/plus.png',
                height: 30,
                width: 30,
              ),
            ),
            Text(Items[5].toString()),
            GestureDetector(
              onTap: () {
                setState(() {
                  Items[5]--;
                  if (Items[5] == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/minus.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      );
    }
  }
}

class Shahipaneer extends StatefulWidget {
  const Shahipaneer({
    super.key,
  });

  @override
  State<Shahipaneer> createState() => _Shahipaneer();
}

// ignore: camel_case_types
class _Shahipaneer extends State<Shahipaneer> {
  // ignore: non_constant_identifier_names

  bool isTap = false;
  double top = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 400,
        height: 130,
        child: Stack(
          children: [
            Positioned(
                top: 10,
                left: 10,
                child: Image.asset(
                  'assets/buttons/veg.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 6,
                left: 40,
                child: Text(
                  Veg[2],
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 36,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delicious Paneer cubes serverd',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'with craving orange gravy',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            Positioned(
                top: 80,
                left: 60,
                child: Text(Veg_Price[2].toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400))),
            Positioned(
                top: 83,
                left: 40,
                child: Image.asset(
                  'assets/buttons/Rupee.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 0,
                right: 20,
                child: Image.asset(
                  'assets/dispics/dishes/Shahi paneer.jpg',
                  height: 130,
                  width: 117,
                )),
            Positioned(
                top: top,
                right: 10,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isTap = true;
                        Items[6]++;
                        top = 20;
                      });
                    },
                    child: PBM_GD())),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Container PBM_GD() {
    if (Items[6] == 0) {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 42, 252, 0),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Image.asset(
          'assets/buttons/plus.png',
          height: 30,
          width: 30,
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 122, 56),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Items[6]++;

                  if (Items[6] == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/plus.png',
                height: 30,
                width: 30,
              ),
            ),
            Text(Items[6].toString()),
            GestureDetector(
              onTap: () {
                setState(() {
                  Items[6]--;
                  if (Items[6] == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/minus.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      );
    }
  }
}

class KajuCurry extends StatefulWidget {
  const KajuCurry({
    super.key,
  });

  @override
  State<KajuCurry> createState() => _KajuCurry();
}

// ignore: camel_case_types
class _KajuCurry extends State<KajuCurry> {
  bool isTap = false;
  double top = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 400,
        height: 130,
        child: Stack(
          children: [
            Positioned(
                top: 10,
                left: 10,
                child: Image.asset(
                  'assets/buttons/veg.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 6,
                left: 40,
                child: Text(
                  Veg[3],
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 36,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delicious Paneer cubes serverd',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'with craving orange gravy',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            Positioned(
                top: 80,
                left: 60,
                child: Text(Veg_Price[3].toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400))),
            Positioned(
                top: 83,
                left: 40,
                child: Image.asset(
                  'assets/buttons/Rupee.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 0,
                right: 20,
                child: Image.asset(
                  'assets/dispics/dishes/Kajucurry.jpg',
                  height: 130,
                  width: 117,
                )),
            Positioned(
                top: top,
                right: 10,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isTap = true;
                        Items[7]++;
                        top = 20;
                      });
                    },
                    child: PBM_GD())),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Container PBM_GD() {
    if (Items[7] == 0) {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 42, 252, 0),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Image.asset(
          'assets/buttons/plus.png',
          height: 30,
          width: 30,
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 122, 56),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Items[7]++;

                  if (Items[7] == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/plus.png',
                height: 30,
                width: 30,
              ),
            ),
            Text(Items[7].toString()),
            GestureDetector(
              onTap: () {
                setState(() {
                  Items[7]--;
                  if (Items[7] == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/minus.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      );
    }
  }
}

class ChickenBiryani extends StatefulWidget {
  const ChickenBiryani({
    super.key,
  });

  @override
  State<ChickenBiryani> createState() => _ChickenBiryani();
}

// ignore: camel_case_types
class _ChickenBiryani extends State<ChickenBiryani> {
  bool isTap = false;
  double top = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 400,
        height: 130,
        child: Stack(
          children: [
            Positioned(
                top: 10,
                left: 10,
                child: Image.asset(
                  'assets/buttons/non veg.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 6,
                left: 40,
                child: Text(
                  Nonveg[4],
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 36,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delicious Paneer cubes serverd',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'with craving orange gravy',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            Positioned(
                top: 80,
                left: 60,
                child: Text(NonVeg_Price[4].toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400))),
            Positioned(
                top: 83,
                left: 40,
                child: Image.asset(
                  'assets/buttons/Rupee.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 0,
                right: 20,
                child: Image.asset(
                  'assets/dispics/dishes/Chickenbiryani.jpeg',
                  height: 130,
                  width: 117,
                )),
            Positioned(
                top: top,
                right: 10,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isTap = true;
                        Items[8]++;
                        top = 20;
                      });
                    },
                    child: PBM_GD())),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Container PBM_GD() {
    if (Items[8] == 0) {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 42, 252, 0),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Image.asset(
          'assets/buttons/plus.png',
          height: 30,
          width: 30,
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 122, 56),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Items[8]++;

                  if (Items[8] == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/plus.png',
                height: 30,
                width: 30,
              ),
            ),
            Text(Items[8].toString()),
            GestureDetector(
              onTap: () {
                setState(() {
                  Items[8]--;
                  if (Items[8] == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/minus.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      );
    }
  }
}

class ChickenCurry extends StatefulWidget {
  const ChickenCurry({
    super.key,
  });

  @override
  State<ChickenCurry> createState() => _ChickenCurry();
}

// ignore: camel_case_types
class _ChickenCurry extends State<ChickenCurry> {
  bool isTap = false;
  double top = 45;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        width: 400,
        height: 130,
        child: Stack(
          children: [
            Positioned(
                top: 10,
                left: 10,
                child: Image.asset(
                  'assets/buttons/non veg.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 6,
                left: 40,
                child: Text(
                  Nonveg[3],
                  style: GoogleFonts.roboto(
                      fontSize: 20, fontWeight: FontWeight.w400),
                )),
            Positioned(
                top: 36,
                left: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Delicious Paneer cubes serverd',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'with craving orange gravy',
                      style: GoogleFonts.roboto(
                          fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                )),
            Positioned(
                top: 80,
                left: 60,
                child: Text(NonVeg_Price[3].toString(),
                    style: GoogleFonts.roboto(
                        fontSize: 18, fontWeight: FontWeight.w400))),
            Positioned(
                top: 83,
                left: 40,
                child: Image.asset(
                  'assets/buttons/Rupee.png',
                  height: 20,
                  width: 20,
                )),
            Positioned(
                top: 0,
                right: 20,
                child: Image.asset(
                  'assets/dispics/dishes/chickencurry.jpg',
                  height: 130,
                  width: 117,
                )),
            Positioned(
                top: top,
                right: 10,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isTap = true;
                        Items[9]++;
                        top = 20;
                      });
                    },
                    child: PBM_GD())),
          ],
        ));
  }

  // ignore: non_constant_identifier_names
  Container PBM_GD() {
    if (Items[9] == 0) {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 42, 252, 0),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Image.asset(
          'assets/buttons/plus.png',
          height: 30,
          width: 30,
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 122, 56),
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Items[9]++;

                  if (Items[9] == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/plus.png',
                height: 30,
                width: 30,
              ),
            ),
            Text(
              Items[9].toString(),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Items[9]--;
                  if (Items[9] == 0) {
                    top = 45;
                  } else {
                    top = 20;
                  }
                });
              },
              child: Image.asset(
                'assets/buttons/minus.png',
                height: 30,
                width: 30,
              ),
            ),
          ],
        ),
      );
    }
  }
}
