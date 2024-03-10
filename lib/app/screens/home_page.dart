import 'package:app2/app/screens/detail_sceen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: AppBar(
        elevation: 0,
        leading: null,
        backgroundColor: Colors.transparent,
        title: const Text(
          'logo',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.filter_list),
              onPressed: () => showDialog(
                  context: context, builder: (_) => const AppDialog()),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Item(size: size),
            ],
          ),
        ),
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => const DetailScreen(),
        ),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Column(
          children: [
            Container(
              height: size.height * 0.52,
              decoration: const BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
            ),
            Container(
              height: size.height * .1,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                gradient: LinearGradient(
                  colors: [
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.white,
                    Colors.grey.shade200,
                    Colors.grey.shade400,
                    Colors.white,
                    Colors.black.withOpacity(0.2),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Product Name\n',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: 'Brand Name',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black, width: 1.5),
                      ),
                      child: const Text(
                        '\$199',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    const SizedBox(width: 15),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppDialog extends StatefulWidget {
  const AppDialog({super.key});

  @override
  State<AppDialog> createState() => _AppDialogState();
}

class _AppDialogState extends State<AppDialog> {
  double start = 20;
  double end = 900;

  var value = false;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Spacer(),
                Text(
                  'Filters',
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Text(
                  'Clear',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Brand',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                    color: Colors.white,
                  ),
                  height: 50,
                  width: 100,
                  child: const Center(
                    child: Text('LG'),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  height: 50,
                  width: 100,
                  child: const Center(
                    child: Text('Hisense'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                    color: Colors.transparent,
                  ),
                  height: 50,
                  width: 100,
                  child: const Center(
                    child: Text(
                      'HP',
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  'Price(\$)',
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Text(
                  '20-2000',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            RangeSlider(
              activeColor: Colors.yellow,
              min: 20,
              max: 2000,
              values: RangeValues(start, end),
              onChanged: (value) {
                setState(() {
                  start = value.start;
                  end = value.end;
                });
              },
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text(
                  'Discounted items',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Switch(
                  value: value,
                  thumbColor: MaterialStateProperty.all(Colors.yellow),
                  trackColor: MaterialStateProperty.all(Colors.transparent),
                  trackOutlineColor: MaterialStateProperty.all(Colors.yellow),
                  onChanged: (v) {
                    setState(() {
                      value = v;
                    });
                  },
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Colors.yellow,
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
