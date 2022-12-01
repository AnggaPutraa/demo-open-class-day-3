import 'package:flutter/material.dart';
import 'package:open_class_day_three/widgets/content_title_and_description.dart';

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