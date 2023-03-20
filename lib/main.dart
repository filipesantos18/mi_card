import 'package:flutter/material.dart';
import 'package:mi_card/shared/themes/app_images.dart';
import 'package:mi_card/shared/themes/app_text_styles.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage(AppImages.profilePicture),
              ),
              Text(
                'Filipe Mendes',
                style: TextStyles.titleLype,
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyles.titleOcupation,
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 10.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    '+99 940028922',
                    style: TextStyles.titleMain,
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal[900],
                    ),
                    title: Text(
                      'filipe@gmail.com',
                      style: TextStyles.titleMain,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
