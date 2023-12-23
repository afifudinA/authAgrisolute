import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: VerifOTP(),
    );
  }
}

class VerifOTP extends StatelessWidget {
  const VerifOTP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFF474747),
            ),
          ),
          centerTitle: true,
          title: Text(
            "OTP",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF474747)),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 64, bottom: 32),
                  child: Image.asset('assets/HP.png'),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Text(
                    "Verifikasi OTP",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0XFF474747)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Belum mendapat kode verifikasi ? ",
                        style:
                            TextStyle(fontSize: 12, color: Color(0XFF474747)),
                      ),
                      Text(
                        "Kirim Ulang",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0XFF474747),
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                        4,
                        (index) => Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.shade300),
                          child: TextField(
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              border: InputBorder.none,
                            ),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1)
                            ],
                            onChanged: (value) {
                              if (value.length == 1 && index < 3) {
                                // Move focus to the next TextField
                                FocusScope.of(context).nextFocus();
                              } else if (value.isEmpty && index > 0) {
                                // Move focus to the previous TextField when backspacing
                                FocusScope.of(context).previousFocus();
                              }
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 48,
                  margin: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF3B8056),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Verifikasi",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
