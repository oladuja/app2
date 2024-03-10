import 'package:app2/app/screens/home.dart';
import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 35),
            const Text(
              'Almost there...',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('Few more steps'),
            const SizedBox(height: 25),
            const Center(child: Text('What\'s your birthday?')),
            const SizedBox(height: 15),
            const Center(
              child: Text(
                '03    19    98',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(child: Text('What\'s your preffered location?')),
            const SizedBox(height: 15),
            const Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Location(
                    location: 'USA',
                  ),
                  Location(
                    location: 'EU',
                  ),
                  Location(
                    location: 'ASIA',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey.shade200,
              ),
              child: const Text(
                'Other',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (_) => const Home(),
          ),
          (route) => false,
        ),
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.arrow_forward,
          size: 32,
        ),
      ),
    );
  }
}

class Location extends StatelessWidget {
  const Location({
    super.key,
    required this.location,
  });

  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        shape: BoxShape.circle,
      ),
      height: 75,
      width: 75,
      child: Center(
        child: Text(
          location,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
