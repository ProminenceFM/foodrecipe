import 'package:flutter/material.dart';

class PageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PageAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          // Show a SnackBar when the back button is pressed
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("Can't go back to Home Page"),
              duration: Duration(seconds: 3),
            ),
          );

          // Add your logic to handle the back button press
          // For example, you can use Navigator.pop(context) to navigate back
        },
        icon: const Icon(Icons.arrow_back),
      ),
      actions: [
        PopupMenuButton<String>(
          onSelected: (value) {
            // Handle the selected menu item
            if (value == 'profile') {
              // Handle profile option
            } else if (value == 'settings') {
              // Handle settings option
            }
            else if (value == 'review') {
              // Handle Review option
            }
          },
          itemBuilder: (BuildContext context) => [
            PopupMenuItem<String>(
              value: 'profile',
              child: Text('Profile'),
              textStyle: TextStyle(
                color: Colors.black,
              ),
            ),
            PopupMenuItem<String>(
              value: 'review',
              child: Text('Review'),
              textStyle: TextStyle(
                color: Colors.black,
              ),
            ),
            PopupMenuItem<String>(
              value: 'settings',
              child: Text('Settings'),
              textStyle: TextStyle(
                color: Colors.black,
              ),
            )
          ],
          shape: null, 
          color: Colors.white, 
          elevation: 2, 
        ),
      ],
    );
  }
}
