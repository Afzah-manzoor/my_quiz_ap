import 'package:flutter/material.dart';

import '../../../enums.dart';
import '../../components/nav_bar.dart';

class QuizHistory extends StatefulWidget {
  static String routeName = "/history";
  const QuizHistory({super.key});

  @override
  State<QuizHistory> createState() => _QuizHistoryState();
}

class _QuizHistoryState extends State<QuizHistory> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.history,
      ),
    );
  }
}
