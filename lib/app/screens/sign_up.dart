import 'package:app2/app/screens/brands.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Column(
        children: [
          Container(
            height: size.height * 0.7,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/productslide.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'logo',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                OutlinedButton(
                  onPressed: () => showSignUp(context),
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 35, vertical: 15)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.grey.shade200),
                  ),
                  child: const Text(
                    'Continue with Google',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 38, vertical: 15)),
                  ),
                  child: const Text(
                    'Continue with Apple',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'By creating an account, you agree to our ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Terms of service ',
                        style: TextStyle(color: Colors.blue),
                      ),
                      TextSpan(
                        text: 'and ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  void showSignUp(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => Dialog(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'logo',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Choose an account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              const Center(
                child: Text('to continue to app name'),
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const Brands(),
                  ),
                ),
                child: const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/pic1.png'),
                    radius: 25,
                  ),
                  title: Text(
                    'Lara Mueller',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('laramueller@gmail.com'),
                ),
              ),
              const Divider(),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => const Brands(),
                  ),
                ),
                child: const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/pic2.png'),
                    radius: 25,
                  ),
                  title: Text(
                    'Cameron Williamson',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('cameronwilliamson@gmail.com'),
                ),
              ),
              const Divider(),
              // const SizedBox(height: 30),
              const Spacer(),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'To continue, Google will share your name, email address, and profile with "appname". Before using this, review its  ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Terms of service ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(color: Colors.blue),
                    )
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
