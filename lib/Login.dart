import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B8056),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Agrisolute",
              style: GoogleFonts.creteRound(
                // Replace 'someFont' with the desired font from Google Fonts
                textStyle: TextStyle(
                  fontSize: 34, // Adjust the font size as needed
                  color: Colors.white, // Adjust the text color as needed
                ),
              ),
            ),
            SizedBox(
              height: 106,
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "No Telepon",
                        hintStyle: TextStyle(color: Colors.white),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 16)),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: true, // Toggle obscureText
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        suffixIcon: Icon(Icons.visibility_off),
                        suffixIconColor: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 18),
                      child: Text(
                        "Lupa Kata Sandi?",
                        style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.white),
                      ),
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFC39567),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {},
                    child: Text(
                      "Masuk",
                      style: TextStyle(color: Color(0xFFFFFFFF)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 29, right: 24),
                        child: Divider(thickness: 1, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "atau",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 24, left: 29),
                        child: Divider(thickness: 1, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFFFFF),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/google-logo.png',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Masuk dengan Google",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Belum memiliki akun? ",
                      style: TextStyle(color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegisterPage(),
                          ),
                        );
                      },
                      child: Text(
                        "Daftar Disini",
                        style: TextStyle(
                            color: Color(0xFFC39567),
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFFC39567)),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
