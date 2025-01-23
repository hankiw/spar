import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class SignScreen extends StatefulWidget {
  const SignScreen({super.key});

  @override
  State<SignScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SignScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
										Colors.indigoAccent,
										Colors.indigo
                  ],
                )
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Lorem ipsum dolor sit amet ',
                          style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        Text('SPAR',
                          style: GoogleFonts.bebasNeue(
                            textStyle: TextStyle(color: Colors.white, fontSize: 60.0),
                          )
                        ),
                      ],
                    ),
                  ),
                ),
                // Expanded(
                //   flex: 2,
                //   child: Padding(
                //     padding: EdgeInsets.all(15.0),
                //     child: Column(
                //       children: [
                //         UserInput(emailController, 'Email', TextInputType.emailAddress),
                //         UserInput(passwordController, 'Password', TextInputType.visiblePassword),
                //       ],
                //     ),
                //   ),
                // ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        UserInput(emailController, 'Email', TextInputType.emailAddress),
                        UserInput(passwordController, 'Password', TextInputType.visiblePassword),
                        SignInButton(),
												SizedBox(height: 10.0),
                        SignUpButton(),
                      ]
                    ),
                  ),
                )
              ],
            )
          ]
        ),
      )
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        debugPrint('sign in button clicked ::');
        
        Navigator.of(context).pushReplacementNamed('/MainFrame');
      },
			style: ElevatedButton.styleFrom(
				foregroundColor: Colors.white,
				backgroundColor: Colors.lightBlue[600],
				shape: RoundedRectangleBorder(
					borderRadius: BorderRadius.circular(8),
				)
			),
      child: Text('SIGN IN', style: TextStyle(fontSize: 20.0)),
    );
  }
}

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        debugPrint('sign up button clicked ::');
        Navigator.of(context).pushNamed('/SignUp');
        // Navigator.of(context).pushReplacementNamed('/Home');
      },
			style: ElevatedButton.styleFrom(
				foregroundColor: Colors.white,
				backgroundColor: Colors.lightBlue[900],
				shape: RoundedRectangleBorder(
					borderRadius: BorderRadius.circular(8),
				)
			),
      child: Text('SIGN UP', style: TextStyle(fontSize: 20.0)),
    );
  }
}

Widget UserInput(TextEditingController editingController, String hintText, TextInputType keyboardType) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.only(bottom: 15.0),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 8.0, right: 15.0),
        child: TextField(
          controller: editingController,
          autocorrect: false,
          enableSuggestions: false,
          autofocus: false,
          decoration: InputDecoration.collapsed(
            hintText: hintText,
            hintStyle: TextStyle(fontSize: 15.0, color: Colors.black38, fontStyle: FontStyle.italic),
          ),
          keyboardType: keyboardType,
        )
      )
    );
  }