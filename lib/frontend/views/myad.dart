import 'package:flutter/material.dart';
import 'package:quotaserver/constant/animation/animationFadeLeftToRight.dart';
import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
import 'package:quotaserver/frontend/widgets/editImageBox.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';

class myads extends StatefulWidget {
  const myads({super.key});

  @override
  State<myads> createState() => _myadsState();
}

class _myadsState extends State<myads> {
  @override
  Widget build(BuildContext context) {
    List<ImageBoxEdit> imageBoxes = <ImageBoxEdit>[
      ImageBoxEdit(
        imageUrl:
            "https://s3-alpha-sig.figma.com/img/5186/2a41/855a43d6007b38137684e81a9d33eb00?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HLedkk6DnOI22aDRFSsvBBJzKhvvO~zhxMCUzOKSKTyHhNXzZ8WhzWfalIs33NI8Dw1-CUHd4dye6~ZY3QG3Z91qgnExwTOK0iIiR9fFaFnr9Xq515w2SdmmC6D-WTlfxN31xBmUqzGdeZHOfy5DCuadwyotAjRGr5jxQpFGkSiWxNyOKY-a2B7HHXAiup-q7cNs2601-vHAo1vOytuz3V8EY8sK3zzSWW3xvLUeR3b6LVU7X86CtYw8-PPjgS-GB4DNHgSPvNaG~XFpjWAVzBhLClGKjEEQg2VM2qDEdWI8QUnmEoU5rv2yaLiDmWUTi6T-NihuMtKfLR4Z39nBPw__",
        price: ' 54,77,823.73',
        title: 'Lorem Ipsum',
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
        onIcon1Tap: () {},
        onIcon2Tap: () {},
      ),
      ImageBoxEdit(
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
        onIcon1Tap: () {},
        onIcon2Tap: () {},
      ),
      ImageBoxEdit(
        imageUrl:
            "https://s3-alpha-sig.figma.com/img/5186/2a41/855a43d6007b38137684e81a9d33eb00?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HLedkk6DnOI22aDRFSsvBBJzKhvvO~zhxMCUzOKSKTyHhNXzZ8WhzWfalIs33NI8Dw1-CUHd4dye6~ZY3QG3Z91qgnExwTOK0iIiR9fFaFnr9Xq515w2SdmmC6D-WTlfxN31xBmUqzGdeZHOfy5DCuadwyotAjRGr5jxQpFGkSiWxNyOKY-a2B7HHXAiup-q7cNs2601-vHAo1vOytuz3V8EY8sK3zzSWW3xvLUeR3b6LVU7X86CtYw8-PPjgS-GB4DNHgSPvNaG~XFpjWAVzBhLClGKjEEQg2VM2qDEdWI8QUnmEoU5rv2yaLiDmWUTi6T-NihuMtKfLR4Z39nBPw__",
        price: '300',
        title: "Car 03",
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
        onIcon1Tap: () {},
        onIcon2Tap: () {},
      ),

      // Add more ImageBox widgets as needed
    ];

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: MyTexxtStyle(
                text: "My Ads",
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
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
    );
  }
}
