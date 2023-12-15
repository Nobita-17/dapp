import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<String> onboardingTexts = [
    'Welcome to Onboarding Screen 1',
    'Explore features in Screen 2',
    'Get started with Screen 3',
  ];

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              onboardingTexts[currentPageIndex],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (currentPageIndex < onboardingTexts.length - 1) {
                    currentPageIndex++;
                  } else {
                    // Navigate to the next screen or perform the final action
                    // For now, let's just print a message
                    print('Onboarding completed!');
                  }
                });
              },
              child: Text(currentPageIndex < onboardingTexts.length - 1 ? 'Next' : 'Finish'),
            ),
          ],
        ),
      ),
    );
  }
}
