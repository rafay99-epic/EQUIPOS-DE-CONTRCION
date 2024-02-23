import 'package:flutter/material.dart';
import 'package:quotaserver/constant/animation/animationFadeLeftToRight.dart';
import 'package:quotaserver/frontend/screens/ChatScreen.dart';
import 'package:quotaserver/frontend/screens/ItemDetailScreen.dart';
import 'package:quotaserver/frontend/widgets/imagebox.dart';
import 'package:quotaserver/frontend/widgets/myButton.dart';
import 'package:quotaserver/frontend/widgets/textfeild.dart';
import 'package:quotaserver/frontend/widgets/textstyle.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  void _showDialog() {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      barrierColor: Colors.black45,
      transitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (
        BuildContext buildContext,
        Animation animation,
        Animation secondaryAnimation,
      ) {
        return Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Material(
              type: MaterialType.transparency,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: MediaQuery.of(context).size.width - 40,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 30,
                      ),
                      MyTexxtStyle(
                        text: "Report Profile",
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          MyTexxtStyle(
                            text: '• False Information',
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          MyTexxtStyle(
                            text: '• Hate speech or symbols',
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          MyTexxtStyle(
                            text: '• Bullying or harassment',
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          MyTexxtStyle(
                            text: '• Spam',
                            textAlign: TextAlign.center,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      MyButton(
                        text: "Report",
                        textColor: Colors.red,
                        backgroundColor: Colors.transparent,
                        onTap: () {
                          //logic for firebase and sending the report to the backend
                        },
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        width: double.infinity,
                        isBold: true,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //Image Boxes
    List<ImageBox> imageBoxes = <ImageBox>[
      ImageBox(
        imageUrl:
            'https://s3-alpha-sig.figma.com/img/5186/2a41/855a43d6007b38137684e81a9d33eb00?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HLedkk6DnOI22aDRFSsvBBJzKhvvO~zhxMCUzOKSKTyHhNXzZ8WhzWfalIs33NI8Dw1-CUHd4dye6~ZY3QG3Z91qgnExwTOK0iIiR9fFaFnr9Xq515w2SdmmC6D-WTlfxN31xBmUqzGdeZHOfy5DCuadwyotAjRGr5jxQpFGkSiWxNyOKY-a2B7HHXAiup-q7cNs2601-vHAo1vOytuz3V8EY8sK3zzSWW3xvLUeR3b6LVU7X86CtYw8-PPjgS-GB4DNHgSPvNaG~XFpjWAVzBhLClGKjEEQg2VM2qDEdWI8QUnmEoU5rv2yaLiDmWUTi6T-NihuMtKfLR4Z39nBPw__',
        price: ' 54,77,823.73',
        title: 'Lorem ipsum',
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl:
            "https://s3-alpha-sig.figma.com/img/afac/69f0/d71dd0fd18ee6822dfb29b15af40d972?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bp~Qmu-3MUTwhwnaVnZ75cFINHtz3Mw9lFaNzaNN-e5EzXCNLMoQZnuwTSG~OB6luFhrdrlLHN5ggV~wzt4rZYJZ5xTWgvfeFYkQGb-ROIYi51GQU2fzrRsbeTyfPmNVPHtgUvEHziSilLN1dmZP2etqpYkMmumKIdE0Hj6Z9IEpLK~daow8~WgAAcpg5uLxOviCvYoZH7XeK0e-ZxX1q3eMVtuaQ0n5OZe5RqJT8Nd68jPyvmf~X2qEAkv0Ak0G5mTSA2Dyvnsq2IZLRm6sj6hBwgZhOOpyxyDAE6XVfG7ej1FouqYtr~ipNaHPz917GlT20VLkSZzOdnlhYoEejw__",
        price: ' 5,85,000',
        title: "Lorem ipsum",
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      ImageBox(
        imageUrl:
            'https://s3-alpha-sig.figma.com/img/0f32/1be1/d8c025f567bfb467b510552115d4dde9?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ild6o30heFXJn~M3SD67TktsbTYVbp~peKk1NPhJhXCZ53EkY2fLPoUjeY2Id8Rr-AeYtdaY7KTTPFfLXG36nugfk8oEwdt-xooqGGZgCoIa7ajzs~NKw5XALxNF4aCnnypHJMrAwqaaIz7yMG~uztPyJcdWrXMgjnb50aLqxuW1J4vdiRg9-hh0PIpK0z03svaTHxHpPwWSa51e9pEeUeUwfjzy2SXRgBo6YHkcjU7mpJyTJf0hCovnkQgbEtojzHN6tr7VK5wxqqa555~-nB26UQSASmEz-Z6KAPcB44kQn8-QOv3KJumuUp4IernRdZVYaclHGMkMZ4SQbd1Z~A__',
        price: ' 5,85,000',
        title: "Lorem ipsum",
        onTap: () {
          Navigator.of(context).push(transitionToPage(
            const ItemDetailScreen(),
            durationMillis: 500,
          ));
        },
      ),
      // Add more ImageBox widgets as needed
    ];

    var screenSize = MediaQuery.of(context).size;
    // Calculate padding and margin based on screen size
    var padding = screenSize.width * 0.01; // 1% of screen width
    String imageUrl =
        "https://images.unsplash.com/photo-1521572267360-ee0c2909d518?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"; // Replace with your image URL
    String name = "Alex Adam"; // Replace with the name
    String twitterId = "@alexadam"; // Replace with the Twitter ID

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: _showDialog,
          ),
        ],
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          CustomPaint(
            size: Size(MediaQuery.of(context).size.width, 200),
            painter: RectanglePainter(),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: Image.network(imageUrl).image,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: MyTexxtStyle(
                          text: name,
                          fontSize: 24,
                          color: Theme.of(context).colorScheme.background,
                          fontWeight: FontWeight.w500,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Positioned(
                        right: 0,
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.blue,
                          size: 14,
                        ),
                      ),
                    ],
                  ),
                  MyTexxtStyle(
                    text: twitterId, // Twitter ID
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(
                        screenSize.width * 0.05,
                      ),
                      child: MyButton(
                        text: "Send Message",
                        textColor: Theme.of(context).colorScheme.secondary,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        onTap: () {
                          Navigator.of(context).push(transitionToPage(
                            ChatScreen(),
                            durationMillis: 500,
                          ));
                        },
                        fontSize: 16,
                        width: double.infinity,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MyTextFeild(
                    hintText: 'Full Name',
                    obsuretext: false,
                    controller: _nameController,
                    showShadow: false,
                    showIcon: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyTextFeild(
                    hintText: 'Email adress',
                    obsuretext: false,
                    controller: _emailController,
                    showShadow: false,
                    showIcon: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyTextFeild(
                    hintText: 'Phone Number',
                    obsuretext: false,
                    controller: _phoneNumberController,
                    showShadow: false,
                    onlyNumber: true,
                    showIcon: false,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 25, top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        MyTexxtStyle(
                          text: 'Products ',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GridView.builder(
                        itemCount: imageBoxes.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
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
          ),
        ],
      ),
    );
  }
}

class RoundedEdgePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.black;
    paint.style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(0, size.height * 2.5); // Adjust this line
    path.arcToPoint(
      Offset(size.width, size.height * 1), // Adjust this line
      radius: Radius.circular(size.width / 2),
      largeArc: true,
    );
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.black;
    paint.style = PaintingStyle.fill;

    var rect =
        Rect.fromLTWH(0, 0, size.width, size.height); // Create a rectangle

    canvas.drawRect(rect, paint); // Draw the rectangle
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
