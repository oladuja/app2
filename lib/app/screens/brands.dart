import 'package:app2/app/screens/registration.dart';
import 'package:flutter/material.dart';

class Brands extends StatefulWidget {
  const Brands({super.key});

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  Map<String, bool> brandsClicked = {
    'hp': false,
    'samsung': false,
    'apple': false,
    'alienware': false,
    'panasonic': false,
    'logitech': false,
    'dji': false,
    'dell': false,
    'hisense': false,
    'lg': false,
  };
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
              'Hey Username,',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('Pick at least 3 brands you like'),
            const SizedBox(height: 15),
            GridView.builder(
              padding: EdgeInsets.zero,
              itemCount: brandsName.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (_, i) => GestureDetector(
                onTap: () {
                  setState(() {
                    brandsClicked[brandsClicked.keys.elementAt(i)] =
                        !brandsClicked.values.elementAt(i);
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: brandsClicked.values.elementAt(100)
                          ? Colors.yellow
                          : Colors.black,
                      width: 2,
                    ),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(
                        brandsName[i],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const Registration(),
          ),
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

List<String> brandsName = [
  'assets/hp.png',
  'assets/sam.png',
  'assets/apple.png',
  'assets/alienware.png',
  'assets/pana.png',
  'assets/logic.png',
  'assets/dji.png',
  'assets/dell.png',
  'assets/hi.png',
  'assets/lg.png',
];
