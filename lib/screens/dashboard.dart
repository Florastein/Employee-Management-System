import 'package:flutter/cupertino.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: CustomCard(
              width: MediaQuery.of(context).size.width * 85 / 100,
              color: Colors.transparent,
              child: SizedBox(
                height: 100, // Define a height for the card
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(10, (index) {
                    return Container(
                      width: 100,
                      margin: EdgeInsets.all(8.0),
                      color: Colors.blue,
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
    );
  }
}
