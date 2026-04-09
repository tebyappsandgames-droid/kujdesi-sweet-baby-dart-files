import 'package:flutter/material.dart';
import 'feed_screen.dart';
import 'bedtime_screen.dart';
import 'bathtime_screen.dart';
import 'doctor_checkup_screen.dart';
import 'dress_up_screen.dart';
import 'playtime_screen.dart';

class ActivitySelectorScreen extends StatelessWidget {
  Widget _buildActivityButton(BuildContext context, String assetPath, Widget targetScreen) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => targetScreen)),
      child: Image.asset(assetPath, width: 120, height: 120),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgrounds/activity_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildActivityButton(context, 'assets/toddler_care_buttons/feed_button.png', FeedScreen()),
                _buildActivityButton(context, 'assets/toddler_care_buttons/bedtime_button.png', BedtimeScreen()),
                _buildActivityButton(context, 'assets/toddler_care_buttons/bathtime_button.png', BathtimeScreen()),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildActivityButton(context, 'assets/toddler_care_buttons/doctor_checkup_button.png', DoctorCheckupScreen()),
                _buildActivityButton(context, 'assets/toddler_care_buttons/dress_up_button.png', DressUpScreen()),
                _buildActivityButton(context, 'assets/toddler_care_buttons/playtime_button.png', PlaytimeScreen()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
