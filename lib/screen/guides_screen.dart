import 'package:flutter/material.dart';
import 'package:imtixon/core/custom/card.dart';
import 'package:imtixon/core/theme/dimens.dart';
import 'package:imtixon/core/theme/icons.dart';
import 'package:imtixon/core/theme/strings.dart';
import 'package:imtixon/core/theme/text_style.dart';

class GuidesScreen extends StatefulWidget {
  const GuidesScreen({super.key});

  @override
  State<GuidesScreen> createState() => _GuidesScreenState();
}

class _GuidesScreenState extends State<GuidesScreen> {
int _currentIndex = 0;
final PageController _pageController = PageController();
/// on taped
  void _onTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 300), curve: Curves.ease);
    });
  }

  /// app bar
  AppBar appBar() {
    return AppBar(
      actions: [IconButton(onPressed: () {}, icon: AppIcons.arrow)],
    );
  }

  /// bottom navigationBar
  BottomNavigationBar bottomNavigationBar() {
    return  BottomNavigationBar(
    currentIndex: _currentIndex,
    onTap: _onTapped,
    items: [
    BottomNavigationBarItem(icon:AppIcons.dashBoard, label: ''),
    BottomNavigationBarItem(icon:AppIcons.about, label: ''),
    BottomNavigationBarItem(icon: AppIcons.personIcon, label: ''),
    ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      bottomNavigationBar: bottomNavigationBar(),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(AppDimens.d8),
                child: Text(AppStrings.guides, style: AppTextStyles.guides),
              ),

              /// custom card
              /// boshqa rasmlar error berdi sdkda muammo bor shunga bir xil rasm qoydim
              card(AssetImage('assets/images/img.png') , AppStrings.megaptra , ),
              card(AssetImage('assets/images/img.png') , AppStrings.orcinus , ),
              card(AssetImage('assets/images/img.png') , AppStrings.balaenoptera ,),
              card(AssetImage('assets/images/img.png') , AppStrings.balaenoptera ,),
              card(AssetImage('assets/images/img.png') , AppStrings.physet ,),
              card(AssetImage('assets/images/img.png') , AppStrings.musculus ,),
              card(AssetImage('assets/images/img.png') , AppStrings.physalus ,),
              card(AssetImage('assets/images/img.png') , AppStrings.borealis , ),
              card(AssetImage('assets/images/img.png') , AppStrings.hyperoodon ,),
              card(AssetImage('assets/images/img.png') , AppStrings.melas , ),
              card(AssetImage('assets/images/img.png') , AppStrings.lagenorhynchus , ),

            ],
          ),
        ],
      ),
    );
  }
}
