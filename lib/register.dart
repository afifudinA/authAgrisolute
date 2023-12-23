import 'package:flutter/material.dart';
import 'Login.dart';

bool? isChecked = false;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      if (isChecked == true) {
        return Colors.white;
      }
      return Colors.transparent;
    }

    return Scaffold(
      backgroundColor: Color(0xFF3B8056),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Halo!",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
              textAlign: TextAlign.left,
            ),
            Text(
              "Silahkan isi form di bawah untuk daftar",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.left,
            ),
            Container(
              margin: EdgeInsets.only(top: 32, bottom: 8),
              width: 320,
              height: 48,
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Nama Lengkap",
                  hintStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 8),
              width: 320,
              height: 48,
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "No-Telepon",
                  hintStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 8),
              width: 320,
              height: 48,
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 8),
              width: 320,
              height: 48,
              child: TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off),
                  suffixIconColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8, bottom: 8),
              width: 320,
              height: 48,
              child: TextField(
                style: TextStyle(color: Colors.white),
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Ulangi Password",
                  hintStyle: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.normal),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  suffixIcon: Icon(Icons.visibility_off),
                  suffixIconColor: Colors.white,
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.black,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      text:
                          "Dengan ini saya menyatakan tunduk dan patuh terhadap ",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                      children: [
                        TextSpan(
                            text: "Syarat dan Ketentuan Layanan",
                            style:
                                TextStyle(decoration: TextDecoration.underline))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFC39567),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                onPressed: () {},
                child: Text(
                  "Daftar",
                  style: TextStyle(color: Color(0xFFFFFFFF)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 4, right: 24),
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
                    margin: EdgeInsets.only(right: 4, left: 24),
                    child: Divider(thickness: 1, color: Colors.white),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.symmetric(vertical: 16),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Telah memiliki akun? ",
                  style: TextStyle(color: Colors.white),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ));
                  },
                  child: Text(
                    "Masuk Disini",
                    style: TextStyle(
                        color: Color(0xFFC39567),
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFFC39567)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
