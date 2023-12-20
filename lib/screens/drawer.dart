import 'package:flutter/material.dart';

import 'home.dart';
import 'relu.dart';
import 'sigmoid.dart';
import 'tanH.dart';

class mydrawer extends StatelessWidget {
  const mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue[900],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.only(right: 20, left: 20),
              margin: EdgeInsets.only(top: 40, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.indigo[900],
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // To space content evenly
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/prof.png'),
                    radius: 50,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Deep Learning",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.yellow, // Yellow color for text
                          ),
                        ),
                        Text(
                          "Activation functions",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.yellow, // Yellow color for text
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              title: const Text(
                'Home',
                style: TextStyle(color: Colors.orange), // Orange text color
              ),
              leading: Icon(
                Icons.home,
                color: Colors.yellow, // Yellow icon color
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Relu',
                style: TextStyle(color: Colors.orange), // Orange text color
              ),
              leading: Icon(
                Icons.circle,
                color: Colors.yellow, // Yellow icon color
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Relu()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Sigmoid',
                style: TextStyle(color: Colors.orange), // Orange text color
              ),
              leading: Icon(
                Icons.settings_input_component,
                color: Colors.yellow, // Yellow icon color
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sigmoid()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'TanH',
                style: TextStyle(color: Colors.orange), // Orange text color
              ),
              leading: Icon(
                Icons.account_balance_wallet,
                color: Colors.yellow, // Yellow icon color
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TanH()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
