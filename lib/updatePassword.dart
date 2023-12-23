import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: UpdatePassword(),
    );
  }
}

class UpdatePassword extends StatelessWidget {
  const UpdatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF3B8056),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Lupa Kata Sandi",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF8F8F8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Kata Sandi Baru",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Color(0xFF474747)),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: TextField(
                    obscureText: true, // Toggle obscureText
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(15)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(15)),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Masukkan Kata Sandi Baru",
                        hintStyle:
                            TextStyle(color: Color(0xFFA1A1A1), fontSize: 14),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        suffixIcon: Icon(Icons.visibility_off),
                        suffixIconColor: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    "Konfirmasi Kata Sandi Baru",
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Color(0xFF474747)),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: TextField(
                    obscureText: true, // Toggle obscureText
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(15)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(15)),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Masukkan Ulang Kata Sandi Baru",
                        hintStyle:
                            TextStyle(color: Color(0xFFA1A1A1), fontSize: 14),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        suffixIcon: Icon(Icons.visibility_off),
                        suffixIconColor: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: double.infinity,
              height: 48,
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFC39567),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                onPressed: () {},
                child: Text(
                  "Simpan",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
