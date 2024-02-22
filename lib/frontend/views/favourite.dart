import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotaserver/constant/animation/animationFadeLeftToRight.dart';
import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
import 'package:quotaserver/frontend/widgets/imagebox.dart';

class favourite extends StatefulWidget {
  const favourite({super.key});

  @override
  State<favourite> createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    List<ImageBox> imageBoxes = <ImageBox>[
      ImageBox(
        imageUrl:
            'https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        price: '100',
        title: 'car 01',
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl:
            'https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        price: '200',
        title: "Car 02",
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl:
            'https://images.unsplash.com/photo-1503376780353-7e6692767b70?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        price: '300',
        title: "Car 03",
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      // Add more ImageBox widgets as needed
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: Text(
          'Favourite',
          textAlign: TextAlign.left,
          style: GoogleFonts.roboto(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: GridView.builder(
                  itemCount: imageBoxes.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 boxes per line
                    crossAxisSpacing: 10, // Add some horizontal spacing
                    mainAxisSpacing: 10, // Add some vertical spacing
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return imageBoxes[index];
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
