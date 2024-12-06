import 'package:flutter/material.dart';
import 'package:languages_app/pages/home_page.dart';
import 'package:languages_app/widgets/letters.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _textSlideAnimation;
  late Animation<Offset> _imageSlideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeIn),
      ),
    );

    _textSlideAnimation = Tween<Offset>(
      begin: const Offset(
          0, 2), // Adjust the values to control the vertical movement
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.5, 1.0, curve: Curves.easeInOut),
    ));
    _imageSlideAnimation = Tween<Offset>(
      begin: const Offset(
          0, -2), // Adjust the values to control the vertical movement
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.5, 1.0, curve: Curves.easeInOut),
    ));

    _controller.forward();

    _controller.addListener(() {
      if (_controller.isCompleted) {
        // Navigate to the next screen after the animation completes
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Customize the background color
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffFFBED4),
                Color(0xffA6C1FF),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: _imageSlideAnimation,
                child: FadeTransition(
                  opacity: _fadeAnimation,
                  child: Image.asset('assets/images/logo.png',
                      height: 180, width: 180),
                ),
              ),
              const SizedBox(height: 20),
              SlideTransition(
                position: _textSlideAnimation,
                child: Column(
                  children: [
                    FadeTransition(
                      opacity: _fadeAnimation,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Letters(letter: 'T', color: Colors.amber),
                          Letters(letter: 'O', color: Colors.green),
                          Letters(letter: 'K', color: Colors.purpleAccent),
                          Letters(letter: 'U', color: Colors.blue),
                        ],
                      ),
                    ),
                    FadeTransition(
                      opacity: _fadeAnimation,
                      child: const Text(
                        'Let\'s Learn Japanese',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54, // Customize the text color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
