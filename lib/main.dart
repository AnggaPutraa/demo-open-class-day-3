import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5038BC),
      body: Column(
        children: const [
          DemoHeader(),
          DemoContentBody(),
        ],
      ),
    );
  }
}

class DemoHeader extends StatelessWidget {
  const DemoHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Profile',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              CircleAvatar(
                radius: 90,
                backgroundImage: NetworkImage(
                  'https://cdn.mos.cms.futurecdn.net/8aZAJQ6GRkCArLdinmGAh8.jpg',
                ),
              ),
              Text(
                'Steve Roger',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                '+628123456789012',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DemoContentBody extends StatelessWidget {
  const DemoContentBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(28),
            topRight: Radius.circular(28),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            ContentTitleAndDescription(
              title: 'Bio',
              description:
                  'I keep telling everybody they should move on and grow. Some do. But not us',
            ),
            ContentTitleAndDescription(
              title: 'E-mail',
              description: 'Steve.roger@cs.ui.ac.id',
            ),
            ContentTitleAndDescription(
              title: 'Address',
              description:
                  'Pondok Cina, Kecamatan Beji, Kota Depok, Jawa Barat 16424',
            ),
          ],
        ),
      ),
    );
  }
}

class ContentTitleAndDescription extends StatelessWidget {
  final String title;
  final String description;
  const ContentTitleAndDescription({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          description,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
