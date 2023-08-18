import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/category_page.dart';

class loginPage extends StatelessWidget {
  loginPage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  RegExp regExp = new RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2C752E),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Image(
                    image: AssetImage("assets/images/My project.png"),
                    width: 100),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  child: Form(
                    key: _formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const FittedBox(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return ("the User name must not be empty");
                              } else if (value.length < 8) {
                                return ("User Name must be graterThan 8 Characters");
                              } else if (value[0].toUpperCase() != value[0]) {
                                return 'First character should be uppercase';
                              }
                            },
                            decoration: InputDecoration(
                              hintText: "username",
                              prefixIcon: const Icon(Icons.person),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter password';
                              } else {
                                if (!regex.hasMatch(value)) {
                                  return 'Enter valid password';
                                }
                              }
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "password",
                              suffixIcon: Icon(Icons.visibility_off),
                              prefixIcon: const Icon(Icons.lock),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter an email';
                              } else if (!regExp.hasMatch(value)) {
                                return 'Please enter a valid email';
                              }
                            },
                            // obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Email",
                              // suffixIcon: Icon(Icons.mail),
                              prefixIcon: const Icon(Icons.mail),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20)),
                              border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                          Row(
                            children: [
                              const Spacer(),
                              const Text("New To Quiz?"),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Register?",
                                    style: TextStyle(color: Color(0xFF2C752E)),
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: 200,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20)),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFF2C752E)),
                              ),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          CategorizationScreen(),
                                    ),
                                  );
                                }
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            "assets/images/fingerprint.png",
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Use Touch ID",
                            style: TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: true,
                                  onChanged: (onChanged) {},
                                  activeColor: Color(0xFF2C752E)),
                              GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  "Remember me?",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              const Spacer(),
                              GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  "Forget Password?",
                                  style: TextStyle(color: Color(0xFF2C752E)),
                                ),
                              )
                            ],
                          ),
                        ]),
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
