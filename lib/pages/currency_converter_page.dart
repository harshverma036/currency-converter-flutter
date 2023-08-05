import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});

  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
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
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              child: Text(
                'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
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
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: const InputDecoration(
                  hintText: "Please enter the amount in USD",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(
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
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                onPressed: () {
                  // debug, release, profile
                  setState(() {
                    result = double.parse(textEditingController.text) * 82;
                  });
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
