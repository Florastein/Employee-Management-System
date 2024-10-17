/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovan/components/butts.dart';
import 'package:lovan/screens/employee.dart';
import 'package:lovan/screens/work.dart';
import 'package:timelines_plus/timelines_plus.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NetHub",
          style: GoogleFonts.poppins(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.blue,
        elevation: 1,
        shadowColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                  child: Icon(CupertinoIcons.scribble,
                      size: 120, color: Colors.white)),
            ),
            ListTile(
              leading: Icon(
                Icons.dashboard,
                color: Colors.blue,
              ),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.blue,
              ),
              title: Text('Employees'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Employee()),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.work,
                color: Colors.blue,
              ),
              title: Text('Work'),
              onTap: () {
                Navigator.pop(context); // Close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Work()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Padding(
          //   padding: EdgeInsets.all(8.0),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       SearchBar(
          //         hintText: "Search",
          //         hintStyle: WidgetStatePropertyAll(
          //             TextStyle(color: Colors.white, fontSize: 18)),
          //         leading: Icon(
          //           CupertinoIcons.search,
          //           color: Colors.white,
          //         ),
          //         padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
          //         backgroundColor: WidgetStatePropertyAll(Colors.blue),
          //       ),
          //     ],
          //   ),
          // )
          const Padding(
            padding: EdgeInsets.all(30),
            child: Row(
              children: [
                CustomButton(
                    icon: CupertinoIcons.person_3_fill,
                    IconColor: Colors.white,
                    text: "All Employees",
                    BackgroundColor: Colors.blue),
                SizedBox(
                  width: 15,
                ),
                CustomButton(
                    IconColor: Colors.white,
                    text: "Employee Management",
                    BackgroundColor: Colors.blue,
                    icon: CupertinoIcons.folder_fill_badge_person_crop),
                SizedBox(
                  width: 15,
                ),
                CustomButton(
                    IconColor: Colors.white,
                    text: "Messages",
                    BackgroundColor: Colors.blue,
                    icon: CupertinoIcons.mail_solid),
                SizedBox(
                  width: 15,
                ),
                CustomButton(
                    IconColor: Colors.white,
                    text: "Violence",
                    BackgroundColor: Colors.blue,
                    icon: CupertinoIcons.waveform)
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    CustomCard(
                      borderRadius: 10,
                      color: Colors.blue,
                      hoverColor: Colors.indigo,
                      onTap: () {},
                      height: MediaQuery.of(context).size.width * 7 / 100,
                      width: MediaQuery.of(context).size.width * 20 / 100,
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "124",
                              style: GoogleFonts.satisfy(
                                  color: Colors.white,
                                  fontSize: 48,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "NUMBER OF EMPLOYEES",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(0, 33, 96, 100),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    CustomCard(
                      borderRadius: 10,
                      color: Colors.blue,
                      hoverColor: Colors.indigo,
                      onTap: () {},
                      height: MediaQuery.of(context).size.width * 7 / 100,
                      width: MediaQuery.of(context).size.width * 20 / 100,
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "0",
                              style: GoogleFonts.satisfy(
                                  color: Colors.white,
                                  fontSize: 48,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "WEEKLY ACTIVITY",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(0, 33, 96, 100),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    CustomCard(
                      borderRadius: 10,
                      color: Colors.blue,
                      hoverColor: Colors.indigo,
                      onTap: () {},
                      height: MediaQuery.of(context).size.width * 7 / 100,
                      width: MediaQuery.of(context).size.width * 20 / 100,
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "0",
                              style: GoogleFonts.satisfy(
                                  color: Colors.white,
                                  fontSize: 48,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Active Projects",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(0, 33, 96, 100),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    CustomCard(
                      borderRadius: 10,
                      color: Colors.blue,
                      hoverColor: Colors.indigo,
                      onTap: () {},
                      height: MediaQuery.of(context).size.width * 7 / 100,
                      width: MediaQuery.of(context).size.width * 20 / 100,
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "24",
                              style: GoogleFonts.satisfy(
                                  color: Colors.white,
                                  fontSize: 48,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "WHO COOK BEANS?",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(0, 33, 96, 100),
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.circle_filled,
                  size: 15,
                  color: Colors.blue,
                ),
                Text(
                  "DIVISIONAL OVERVIEW",
                  style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: CustomCard(
              borderRadius: 10,
              width: MediaQuery.of(context).size.width * 91 / 100,
              color: Colors.blue,
              child: SizedBox(
                height: 100, // Define a height for the card
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(10, (index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      width: 100,
                      margin: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Item $index',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 20),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_cards/flutter_custom_cards.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovan/components/butts.dart';
import 'package:lovan/screens/employee.dart';
import 'package:lovan/screens/work.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NetHub",
          style: GoogleFonts.poppins(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600),
        ),
        elevation: 1,
        shadowColor: Colors.black,
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                  child: Icon(CupertinoIcons.scribble,
                      size: 120, color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.dashboard, color: Colors.blue),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Dashboard()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.people, color: Colors.blue),
              title: Text('Employees'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to Employee screen
              },
            ),
            ListTile(
              leading: Icon(Icons.work, color: Colors.blue),
              title: Text('Work'),
              onTap: () {
                Navigator.pop(context);
                // Navigate to Work screen
              },
            ),
          ],
        ),
      ),
      body: GradientBackground(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(30),
              child: Row(
                children: [
                  CustomButton(
                      icon: CupertinoIcons.person_3_fill,
                      IconColor: Colors.white,
                      text: "All Employees",
                      BackgroundColor: Colors.blue),
                  SizedBox(width: 15),
                  CustomButton(
                      IconColor: Colors.white,
                      text: "Employee Management",
                      BackgroundColor: Colors.blue,
                      icon: CupertinoIcons.folder_fill_badge_person_crop),
                  SizedBox(width: 15),
                  CustomButton(
                      IconColor: Colors.white,
                      text: "Messages",
                      BackgroundColor: Colors.blue,
                      icon: CupertinoIcons.mail_solid),
                  SizedBox(width: 15),
                  CustomButton(
                      IconColor: Colors.white,
                      text: "Violence",
                      BackgroundColor: Colors.blue,
                      icon: CupertinoIcons.waveform)
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MetricCard(value: "124", label: "NUMBER OF EMPLOYEES"),
                MetricCard(value: "0", label: "WEEKLY ACTIVITY"),
                MetricCard(value: "0", label: "Active Projects"),
                MetricCard(value: "24", label: "WHO COOK BEANS?"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Row(
                children: [
                  Icon(CupertinoIcons.circle_filled,
                      size: 15, color: Colors.blue),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "DIVISIONAL OVERVIEW",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: CustomCard(
                borderRadius: 20,
                width: MediaQuery.of(context).size.width * 0.85,
                color: Colors.transparent,
                child: SizedBox(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List.generate(10, (index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        width: 100,
                        margin: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            'Item $index',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Gradient Background
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF283593),
                Color(0xFF1976D2),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // Background Circles
        const Positioned(
          top: -50,
          left: -60,
          child: Circle(
            size: 180,
            color1: Color(0xFF006DB3),
            color2: Color(0xFF29B6F6),
          ),
        ),
        const Positioned(
          bottom: -40,
          right: -100,
          child: Circle(
            size: 420,
            color1: Color(0xFF006DB3),
            color2: Color(0xFF29B6F6),
            opacity: 0.8,
          ),
        ),
        Positioned(
          child: Circle(
            size: 150,
            color1: Color.fromRGBO(162, 243, 255, 100),
            color2: Color.fromRGBO(0, 129, 220, 100),
            opacity: 0.8,
          ),
          top: 100,
          left: 100,
          right: 100,
          bottom: 100,
        ),
        // Child content (the rest of the dashboard)
        Positioned.fill(child: child),
      ],
    );
  }
}

// class Circle extends StatelessWidget {
//   final double size;
//   final Color color1;
//   final Color color2;
//   final double opacity;

//   const Circle({
//     Key? key,
//     required this.size,
//     required this.color1,
//     required this.color2,
//     this.opacity = 1.0,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: size,
//       height: size,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         gradient: RadialGradient(
//           colors: [
//             color1.withOpacity(opacity),
//             color2.withOpacity(opacity),
//           ],
//         ),
//       ),
//     );
//   }
// }

class Circle extends StatelessWidget {
  final double size;
  final Color color1;
  final Color color2;
  final double opacity;

  const Circle({
    Key? key,
    required this.size,
    required this.color1,
    required this.color2,
    this.opacity = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            color1.withOpacity(opacity),
            color2.withOpacity(opacity),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: color2.withOpacity(0.8), // Shadow color
            blurRadius: 10.0, // Softness of the shadow
            spreadRadius: 2.0, // Size of the shadow
            offset: Offset(0, 4), // Position of the shadow
          ),
        ],
      ),
    );
  }
}

class MetricCard extends StatelessWidget {
  final String value;
  final String label;

  const MetricCard({Key? key, required this.value, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      borderRadius: 10,
      color: Colors.blue,
      hoverColor: Colors.indigo,
      onTap: () {},
      height: MediaQuery.of(context).size.width * 0.07,
      width: MediaQuery.of(context).size.width * 0.20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            value,
            style: GoogleFonts.satisfy(
                color: Colors.white, fontSize: 48, fontWeight: FontWeight.w600),
          ),
          Text(
            label,
            style: GoogleFonts.poppins(
                color: Color.fromRGBO(0, 33, 96, 100),
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
