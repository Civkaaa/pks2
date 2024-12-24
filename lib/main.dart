import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.only(top: 100.0, bottom: 120.0),
                child: Text(
                  "Авторизация",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 10.0),
                child: SizedBox(
                  height: 50.0,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 18.0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Логин",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 8.0),
                child: SizedBox(
                  height: 50.0,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 18.0),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0.0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Пароль",
                      hintStyle: TextStyle(
                        color: Colors.black45,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    obscureText: true,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(bottom: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      side: BorderSide(
                        color: Colors.black45,
                        width: 1.2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0)
                      ),
                      activeColor: Colors.blueAccent,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Text(
                      "Запомнить меня",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 10.0),
                child: SizedBox(
                  height: 50.0,
                  child: GestureDetector(
                    onTap: () { print("Вход выполнен!"); },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Center(
                        child: Text(
                          "Вход",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 6.0),
                child: SizedBox(
                  height: 50.0,
                  child: GestureDetector(
                    onTap: () { print("Переход на регистрацию"); },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(
                          color: Colors.blueAccent,
                          style: BorderStyle.solid,
                          width: 1.2,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Регистрация",
                          style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              TextButton(
                onPressed: () { print("Переход на восстановление пароля"); },
                child: Center(
                  child: Text(
                    "Восстановить пароль",
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}