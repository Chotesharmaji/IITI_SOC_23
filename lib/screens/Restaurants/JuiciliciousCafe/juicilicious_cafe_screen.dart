import 'package:flutter/material.dart';
import 'package:flutter_2/Screens/Cart/cart_provider.dart';
import 'package:flutter_2/Screens/Cart/data_base.dart';
import 'package:flutter_2/Screens/Restaurants/JuiciliciousCafe/jc_item_identifier.dart';
import 'package:flutter_2/Screens/Restaurants/expand_state_provider.dart';
import 'package:flutter_2/global/globals.dart';
import 'package:flutter_2/screens/Homescreen/home_screen.dart';
import 'package:flutter_2/screens/Payment/afterpayments.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'jc_introduction_box.dart';
import 'juici_cafe_menu.dart';

class JuiciliciousCafeScreen extends StatefulWidget {
  const JuiciliciousCafeScreen({Key? key}) : super(key: key);

  @override
  State<JuiciliciousCafeScreen> createState() => _JuiciliciousCafeScreenState();
}

class _JuiciliciousCafeScreenState extends State<JuiciliciousCafeScreen> {
  DBHelper dbHelper = DBHelper();
  @override
  void initState() {
    super.initState();
    context.read<CartProvider>().getData();
  }

  //List<bool> clicked = List.generate(10, (index) => false, growable: true);
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const Nav(),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        // physics: const ClampingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            const JCIntroduction(),
            SizedBox(
              height: 0.1 * screenwidth,
            ),
            Center(
              child: Text(
                'MENU',
                style: GoogleFonts.inter(
                    fontSize: 26, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 0.05 * screenwidth,
            ),
            ChangeNotifierProvider<ExpandStateProvider>(
                create: (context) => ExpandStateProvider(),
                child: Consumer<ExpandStateProvider>(
                  builder: (context, provider, child) {
                    return Column(
                      children: [
                        Container(
                          height: 0.175 * screenwidth,
                          padding: EdgeInsets.symmetric(
                              horizontal: 0.042 * screenwidth),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 40,
                                width: 0.21 * screenwidth,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: provider.blurradiusall,
                                          spreadRadius: 0,
                                          color: Colors.black.withOpacity(0.2))
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    color: provider.colorall),
                                child: TextButton(
                                  onPressed: () {
                                    categorySelected = 'All';
                                    provider.assignstate(false);
                                    provider.assignblur();
                                    provider.assigncolor();
                                  },
                                  child: Text(
                                    'All',
                                    style: GoogleFonts.inter(
                                        fontSize: 0.036 * screenwidth,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 0.23 * screenwidth,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: provider.blurradiusveg,
                                          spreadRadius: 0,
                                          color: Colors.black.withOpacity(0.2))
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    color: provider.colorveg),
                                child: TextButton(
                                    onPressed: () {
                                      categorySelected = 'Veg';
                                      provider.assignstate(false);
                                      provider.assignblur();
                                      provider.assigncolor();
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 0.05 * screenwidth,
                                          width: 0.05 * screenwidth,
                                          child: ClipRRect(
                                            child: SvgPicture.asset(
                                              'assets/buttons/veg.svg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 0.0255 * screenwidth,
                                        ),
                                        Text(
                                          'Veg',
                                          style: GoogleFonts.inter(
                                              fontSize: 0.036 * screenwidth,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )),
                              ),
                              Container(
                                height: 40,
                                width: 0.295 * screenwidth,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: provider.blurradiusnonveg,
                                          spreadRadius: 0,
                                          color: Colors.black.withOpacity(0.2))
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    color: provider.colornonveg),
                                child: TextButton(
                                    onPressed: () {
                                      categorySelected = 'Non Veg';
                                      provider.assignstate(false);
                                      provider.assignblur();
                                      provider.assigncolor();
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 0.05 * screenwidth,
                                          width: 0.05 * screenwidth,
                                          child: ClipRRect(
                                            child: SvgPicture.asset(
                                              'assets/buttons/nonveg.svg',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 0.0255 * screenwidth,
                                        ),
                                        Text(
                                          'Non Veg',
                                          style: GoogleFonts.inter(
                                              fontSize: 0.0358 * screenwidth,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Theme(
                          data: Theme.of(context)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            collapsedIconColor: Colors.white,
                            iconColor: Colors.white,
                            initiallyExpanded: true,
                            title: Row(
                              children: [
                                Container(
                                  width: 170,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 211, 93, 7),
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      SvgPicture.asset(
                                          'assets/buttons/exptileicon.svg'),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Main Course',
                                        style: GoogleFonts.inter(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: ListView.builder(
                                    itemCount: productsJC.length,
                                    physics: const ClampingScrollPhysics(),
                                    padding: EdgeInsets.only(
                                      top: 0.025 * screenwidth,
                                      bottom: 0.025 * screenwidth,
                                      left: 0.025 * screenwidth,
                                    ),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return JCMainCourse(menuindex: index);
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Theme(
                          data: Theme.of(context)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            collapsedIconColor: Colors.white,
                            iconColor: Colors.white,
                            initiallyExpanded: true,
                            title: Row(
                              children: [
                                Container(
                                  width: 147,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 211, 93, 7),
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      SvgPicture.asset(
                                          'assets/buttons/exptileicon.svg'),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Fast Food',
                                        style: GoogleFonts.inter(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: ListView.builder(
                                    itemCount: productsJC.length,
                                    physics: const ClampingScrollPhysics(),
                                    padding: EdgeInsets.only(
                                      top: 0.025 * screenwidth,
                                      bottom: 0.025 * screenwidth,
                                      left: 0.025 * screenwidth,
                                    ),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return JCFastFood(menuindex: index);
                                    }),
                              ),
                            ],
                          ),
                        ),
                        Theme(
                          data: Theme.of(context)
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            collapsedIconColor: Colors.white,
                            iconColor: Colors.white,
                            initiallyExpanded: true,
                            title: Row(
                              children: [
                                Container(
                                  width: 150,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 211, 93, 7),
                                    borderRadius: BorderRadius.circular(27),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      SvgPicture.asset(
                                          'assets/buttons/exptileicon.svg'),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Beverages',
                                        style: GoogleFonts.inter(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            children: <Widget>[
                              InkWell(
                                onTap: () {},
                                child: ListView.builder(
                                    itemCount: productsJC.length,
                                    physics: const ClampingScrollPhysics(),
                                    padding: EdgeInsets.only(
                                      top: 0.025 * screenwidth,
                                      bottom: 0.025 * screenwidth,
                                      left: 0.025 * screenwidth,
                                    ),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) {
                                      return JCBeverages(menuindex: index);
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                )),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
