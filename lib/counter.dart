import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "COUNT",
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          count.toString().padLeft(2, "0"),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 200,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (count <= 0) {
                    count = 0;
                  } else {
                    count--;
                  }
                });
              },
              icon: const Icon(
                Icons.remove_circle,
                size: 100,
                color: Color(0xffE74C3C),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              icon: const Icon(
                Icons.add_circle,
                size: 100,
                color: Color(0xff2ECC71),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateColor.resolveWith(
                  (states) => const Color(
                    0xff3498DB,
                  ),
                ),
                foregroundColor: WidgetStateColor.resolveWith(
                  (states) => Colors.white,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Text(
                  "RESET",
                  style: GoogleFonts.roboto(
                    textStyle: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
