import 'package:egypt_code/tabs/HomeScreen.dart';
import 'package:egypt_code/tabs/model/egyptcodes.dart';
import 'package:egypt_code/tabs/model/gamaaModel.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  static const String routeName = 'Nav';

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        enableFeedback: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedTabIndex,
        onTap: (index) {
          setState(() {
            selectedTabIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_work_outlined), label: "أكواد شركات الاتصالات"),
          BottomNavigationBarItem(icon: Icon(Icons.home_repair_service) , label: "أرقام الوزارات"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_outlined) , label: "جامعات مصر")
        ],
      ),
      body: tabs[selectedTabIndex],
    );
  }

  List<Widget> tabs = [HomeScreen(), egyptCode() , gamaaModel()];
}
