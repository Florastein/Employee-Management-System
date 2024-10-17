import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lovan/screens/dashboard.dart';

class Login extends StatefulWidget {
  final bool isPassword = true;

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late bool _obscureText;
  bool _isChecked = false;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });

    void _toggleCheckbox(bool? value) {
      setState(() {
        _isChecked = value ?? false;
      });
    }
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color
              spreadRadius: 5, // Spread radius
              blurRadius: 7, // Blur radius
              offset: Offset(0, 3), // Shadow position
            ),
          ],
        ),
        margin: EdgeInsets.all(MediaQuery.of(context).size.height * 10 / 100),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 10 / 100,
              width: MediaQuery.of(context).size.width * 30 / 100,
            ),
            const Icon(
              Icons.lock,
              size: 120,
              color: Colors.blue,
            ),
            Text(
              "LOG IN",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, fontSize: 24),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 25 / 100,
              child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                    focusColor: Colors.blue,
                    label: const Text("Username"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: const Icon(
                      Icons.person_2,
                      color: Colors.blue,
                    )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 25 / 100,
              child: TextField(
                controller: _passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                    focusColor: Colors.blue,
                    label: const Text("Passphrase"),
                    suffixIcon: widget.isPassword
                        ? IconButton(
                            icon: Icon(
                              _obscureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.blue,
                            ),
                            onPressed: _toggleVisibility,
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: const Icon(
                      Icons.key,
                      color: Colors.blue,
                    )),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 25 / 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        _isChecked = value ?? false;
                      },
                      checkColor: Colors.blue,
                      activeColor: Colors.blue,
                    ),
                    Text(
                      "Stay Logged In",
                      style: GoogleFonts.poppins(),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {
                final username = _usernameController.text;
                final password = _passwordController.text;

                if (username == "admin" && password == "1234") {
                  // Logic for successful login
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Row(
                        children: [
                          Icon(Icons.check, color: Colors.white), // Check icon
                          SizedBox(width: 8), // Space between icon and text
                          Text('Login successful!'),
                        ],
                      ),
                      backgroundColor: Colors.blue,
                      duration: Duration(seconds: 3),
                    ),
                  );
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                } else if (username.isEmpty && password.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Row(
                        children: [
                          Icon(Icons.cancel,
                              color: Colors.white), // Cancel icon
                          SizedBox(width: 8), // Space between icon and text
                          Text('Please input username and password.'),
                        ],
                      ),
                      backgroundColor: Color.fromARGB(255, 255, 18, 1),
                      duration: Duration(seconds: 3),
                    ),
                  );
                } else if (username.isEmpty || password.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Row(
                        children: [
                          Icon(Icons.cancel,
                              color: Colors.white), // Cancel icon
                          SizedBox(width: 8), // Space between icon and text
                          Text('Please input username or password.'),
                        ],
                      ),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 3),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Row(
                        children: [
                          Icon(Icons.cancel,
                              color: Colors.white), // Cancel icon
                          SizedBox(width: 8), // Space between icon and text
                          Text('Invalid Credentials'),
                        ],
                      ),
                      backgroundColor: Colors.red,
                      duration: Duration(seconds: 3),
                    ),
                  );
                }
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color
                      spreadRadius: 5, // Spread radius
                      blurRadius: 7, // Blur radius
                      offset: Offset(0, 3), // Shadow position
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 80, right: 80, top: 20, bottom: 20),
                  child: Text(
                    "LOG IN",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
