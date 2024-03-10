import 'package:app2/app/screens/home_page.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

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
                context: context,
                builder: (_) => const AppDialog(),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: size.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 25,
                ),
                title: const Text(
                  'KARA',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  'ramaworks',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                trailing: Container(
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
              ),
              const SizedBox(height: 10),
              const Text(
                'Description',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'KARA KEYBOARD',
                style: TextStyle(color: Colors.grey),
              ),
              const Text(
                'KARA, our newest 60% keyboard offering , with MUTE mounting technology, is an accessible design derived from the M60-A...',
                style: TextStyle(color: Colors.grey),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                  ),
                  child: const Text(
                    'VIEW PRODUCT',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Text(
                'Others also like',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    OtherLike(),
                    OtherLike(),
                    OtherLike(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OtherLike extends StatelessWidget {
  const OtherLike({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: 120,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'KARA',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const Text(
            'ramaworks',
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}
