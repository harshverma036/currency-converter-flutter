import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      // Color(AxAARRGGBB)
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              child: const Text(
                "0",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(6),
              margin: const EdgeInsets.only(bottom: 3),
              child: TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: InputDecoration(
                  hintText: "Please enter the amount in USD",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(
                    Icons.monetization_on_outlined,
                  ),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
            ),
            // button
            Container(
              margin: const EdgeInsets.all(5),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                    Colors.black,
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  minimumSize: const MaterialStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                ),
                onPressed: () {
                  // debug, release, profile
                  if (kDebugMode) {
                    print("clicked convert");
                  }
                },
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
