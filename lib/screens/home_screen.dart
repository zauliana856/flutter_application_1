import 'package:flutter/material.dart';
import '../widgets/atm_card.dart';
import '../widgets/transaction_item.dart';
import '../models/transaction.dart';
import '../widgets/grid_menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final transactions = [
      TransactionModel('Coffee Shop', '-Rp35.000', 'Food'),
      TransactionModel('Grab Ride', '-Rp25.000', 'Travel'),
      TransactionModel('Gym Membership', '-Rp150.000', 'Health'),
      TransactionModel('Movie Ticket', '-Rp60.000', 'Event'),
      TransactionModel('Salary', '+Rp5.000.000', 'Income'),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Finance Mate 💸',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            letterSpacing: 1,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(84, 108, 157, 230),
        foregroundColor: const Color.fromARGB(255, 245, 244, 244),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== Title =====
            const Text(
              'My Cards',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            // ===== Banner Cards =====
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  AtmCard(
                    bankName: 'Bank BRI',
                    cardNumber: '**** 2345',
                    balance: 'Rp20.500.000',
                    color1: Color.fromARGB(255, 104, 154, 230),
                    color2: Color.fromARGB(255, 252, 251, 251),
                  ),
                  AtmCard(
                    bankName: 'Bank BCA',
                    cardNumber: '**** 8765',
                    balance: 'Rp.3500.000',
                    color1: Color.fromARGB(255, 106, 142, 219),
                    color2: Color.fromARGB(255, 251, 251, 252),
                  ),
                  AtmCard(
                    bankName: 'Bank BJB',
                    cardNumber: '**** 8743',
                    balance: 'Rp.4.500.000',
                    color1: Color.fromARGB(255, 106, 142, 219),
                    color2: Color.fromARGB(255, 250, 250, 250),
                  ),
                  AtmCard(
                    bankName: 'Bank BCA',
                    cardNumber: '**** 4321',
                    balance: 'Rp.6.400.000',
                    color1: Color.fromARGB(255, 106, 142, 219),
                    color2: Color.fromARGB(255, 236, 236, 236),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // ===== Grid Menu =====
            const Text(
              'Quick Access',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 17),

            GridView.count(
             crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 1,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
            GridMenuItem(
              imagePath: 'assets/images/health 1.jpg',
              label: 'Health',
              color: Color.fromRGBO(130, 159, 252, 1), 
              size: 250,             
                ),
            GridMenuItem(
              imagePath: 'assets/travel.jpg',
              label: 'Travel',
              color: Color.fromARGB(255, 109, 169, 226), 
            size: 250,
              ),
            GridMenuItem(
              imagePath: 'assets/images/food 1.jpeg',
              label: 'Food',
              color: Color.fromARGB(255, 100, 152, 230), 
              size: 250, 
            ),
            GridMenuItem(
              imagePath: 'assets/images/event 1.png',
              label: 'Event',
              color: Color.fromARGB(255, 88, 117, 214), 
              size: 250,
              ),
              ],
            ),


            const SizedBox(height: 24),

            // ===== Transaction List =====
            const Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return TransactionItem(transaction: transactions[index]);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 110, 163, 231),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stats'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
      ),
    );
  }
}
