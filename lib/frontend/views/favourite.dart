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
//Image Boxes
    List<ImageBox> imageBoxes = <ImageBox>[
      ImageBox(
        imageUrl:
            'https://s3-alpha-sig.figma.com/img/0f32/1be1/d8c025f567bfb467b510552115d4dde9?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ild6o30heFXJn~M3SD67TktsbTYVbp~peKk1NPhJhXCZ53EkY2fLPoUjeY2Id8Rr-AeYtdaY7KTTPFfLXG36nugfk8oEwdt-xooqGGZgCoIa7ajzs~NKw5XALxNF4aCnnypHJMrAwqaaIz7yMG~uztPyJcdWrXMgjnb50aLqxuW1J4vdiRg9-hh0PIpK0z03svaTHxHpPwWSa51e9pEeUeUwfjzy2SXRgBo6YHkcjU7mpJyTJf0hCovnkQgbEtojzHN6tr7VK5wxqqa555~-nB26UQSASmEz-Z6KAPcB44kQn8-QOv3KJumuUp4IernRdZVYaclHGMkMZ4SQbd1Z~A__',
        price: ' 54,77,823.73',
        title: 'Lorem Ipsum',
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl:
            "https://s3-alpha-sig.figma.com/img/a897/29c3/23f6ac4fd7ef0d40f34f8f8270bfa4f8?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=llV0JA2FRA~U-3SkJfjIE1ElJoN5C1MzTP8-4TzQHkbQb0nk8YJBbgV9Po5~YiynY~ul3VX2edZ8pHcwK5oLINUEJKnpAUTmnLWaiPowMIvTs9U1Uxwn4~aLP0CbgFdNr7Mxz72Z-lAfRFJ3MJU0po3DmvoJJCYOl9Jho~Dnt9uV3dMeXsjUdd0OHOe5egBIMMmHXdJlGtLoSfe0WBFVCByQ~0L1WUXxOFvfmFuJMcXsMO33FWEOBaFLScFSofxaOqKB0lIoVfmG7ZuEjIEDACEoqYl1E0hgX3WOI1M81V6Q3ESm-bZXFMiu7RhmyeKhXGgG5VTSf7ty7OVYgItu6g__",
        price: ' 5,85,000',
        title: "Lorem Ipsum",
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl:
            'https://s3-alpha-sig.figma.com/img/dceb/e237/2fbc5ffdb62911399d6d3b9fbf08a24e?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SZ4eEvf4y8Ej5DQfeAPTg~2KnhMmfscHUCRVJ5hYipa44tIza9DIdFqSwfMAT6i8otjcu1H95XIx2BLL4ptPwqar-bDRsTCI-etEAAHa71R8E7o9RkLqp0DzhoGIkuFsfEA~N6KxkMunGwtR4Z8Hbu0uv-JXOar6AeSdBaCEuFiMrSgmFSiloA6h~5wmY43QRi8jVHzMFE9CPOjvpSZQC3qHWHBmlUwDjzZ4EURGqcq7oFrBM3aVGM5Jfa2X3Fa6jVpSDLQkTY4OfjZg39OR0ABll~d8SoBiaPCo1-smaFr3f1D~294biizoQ8Nskf3n85D393CRL4GsEHNKb0b8Rw__',
        price: '300',
        title: "Car 03",
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl:
            "https://s3-alpha-sig.figma.com/img/3d52/491b/87c9ec9faf0212109e6f35542b7c2365?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Uuaionf6IO1PzBgmVwH7U87Ox7hpxn1MOgo5PWCPOUFxPR~CxUYsP~HhmIiNP41304bzQ1PAmG1DRgm-WsCF~N22vrWBeV9j3NHsOdtX3FmDfWt6rer494RwZLrDwGfd5yvNxkF7x-wDaZNfkX6BTPbrAtNCQRCkm2vVVauTWVFIF3QBsl03RVH-4HGRNTNQgeD9PAdoXcgb0pGPl02uwOvgjSNP65VUJpeJe4mQvbJ8dp9PsH05FcIuzMn1KrfBjKaoE4Lzc0R-IniU8WEj1LrsHNgPxeOj6VqNspS9B4~aajOAmz0r6PGD10iOmW60ST1rExPPl05OIoigcMrp-A__",
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
