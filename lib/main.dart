import 'dart:async';
import 'package:flutter/material.dart';
import 'package:my_project/page_view.dart';
import 'package:my_project/widgets/category_container.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () async => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SplashScreen1())));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            child: Container(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage('assets/images/Rectangle 1.png'),
          ),
        )),
        Positioned(
            child: Container(
          alignment: Alignment.center,
          child: const Image(
            alignment: Alignment.center,
            image: AssetImage('assets/images/Group 13.png'),
          ),
        )),
        Positioned(
            child: Container(
          alignment: Alignment.center,
          child: Image(
            width: width / 3.0,
            height: height / 3.0,
            alignment: Alignment.center,
            image: AssetImage('assets/images/Group 14.png'),
          ),
        ))
      ],
    ));
  }
}

class SplashScreen1 extends StatefulWidget {
  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            child: Container(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage('assets/images/Rectangle 1.png'),
          ),
        )),
        Positioned(
            child: Container(
          padding: EdgeInsets.only(top: 40),
          alignment: Alignment.topCenter,
          child: Image(
            width: width / 1.0,
            height: height / 2.0,
            alignment: Alignment.center,
            image: AssetImage('assets/images/Group 11786.png'),
          ),
        )),
        Positioned(
          child: Container(
              padding: EdgeInsets.only(bottom: 70),
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<Widget>(
                          builder: (BuildContext context) => LoginScreen()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: .15 * height,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'أهلا بك في تطبيق علاج',
                        style: TextStyle(
                            fontSize: width * .055 >= 40 ? 40 : width * .055,
                            color: Colors.blueAccent,
                            fontFamily: 'helvectica'),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child: Text(
                        'إستشارة طبية موثوقة بأيدي أفضل الأطباء في قطاع غزة',
                        style: TextStyle(
                            fontSize: width * .025 >= 20 ? 20 : width * .025,
                            fontFamily: 'helvectica'),
                      ),
                    ),
                  ],
                ),
              )),
        )
      ],
    ));
  }
}

class LoginScreen extends StatelessWidget {
  GlobalKey _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                alignment: Alignment.topCenter,
                child: Image(
                  width: width / 3.5,
                  height: height / 4.5,
                  alignment: Alignment.center,
                  image: AssetImage('assets/images/Group 11662.png'),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'تسجيل الدخول',
                  style: TextStyle(
                      fontSize: width * .055 >= 40 ? 40 : width * .055,
                      color: Colors.blueAccent,
                      fontFamily: 'helvectica'),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'أهلا بك من جديد في تطبيق علاج',
                  style: TextStyle(
                      fontSize: width * .033 >= 30 ? 30 : width * .033,
                      color: Colors.blue[800],
                      fontFamily: 'helvectica'),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        onSaved: (String value) {},
                        decoration: InputDecoration(
                            labelText: 'رقم الهاتف',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: TextFormField(
                        onSaved: (String value) {},
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter text';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            labelText: 'كلمة المرور',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Text('نسيت كلمة المرور؟'),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute<Widget>(
                                  builder: (BuildContext context) =>
                                      Category()));
                        },
                        child: Text('تسجيل الدخول')),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      child: Stack(fit: StackFit.expand, children: [
        ///doctor name custom Appbar
        Positioned(
            height: 90,
            child: Container(
              height: 30,
              width: width,
              child: SizedBox(
                height: 30,
              ),
            )),
        //white circular box background
        Positioned(
            child: Container(
          width: width,
          height: height,
          margin: EdgeInsets.only(top: height / 4),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        )),

        Positioned(
            child: Column(children: [
          Container(
              margin: EdgeInsets.only(top: height / 8),
              height: height / 4,
              child: MyPageView()),
          Expanded(
              child: GridView.count(
            // padding: EdgeInsets.all(10),
            crossAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              CategoryContainer(
                imagePath: 'assets/images/Group 1.png',
                text: 'نفسي',
              ),
              CategoryContainer(
                imagePath: 'assets/images/Group 2.png',
                text: 'جنسي',
              ),
              CategoryContainer(
                imagePath: 'assets/images/Group 3.png',
                text: 'باطنة',
              ),
              CategoryContainer(
                imagePath: 'assets/images/Group 4.png',
                text: 'تغذية',
              ),
              CategoryContainer(
                imagePath: 'assets/images/Group 5.png',
                text: 'نساء وولادة',
              ),
              CategoryContainer(
                imagePath: 'assets/images/Group 6.png',
                text: 'جراحة',
              ),
            ],
          ))
        ]))
      ]),
      //background decoration column
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/images/Rectangle 1.png')),
      ),
    ));
  }
}
