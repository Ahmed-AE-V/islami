import 'package:flutter/cupertino.dart';
import 'package:islami/constants/app_colors.dart';
import 'package:islami/constants/app_styles.dart';

class RadioSegmentedTab extends StatefulWidget {
  final ValueChanged<int>? onTabChanged;
  const RadioSegmentedTab({super.key, this.onTabChanged});

  @override
  State<RadioSegmentedTab> createState() => _RadioSegmentedTabState();
}

class _RadioSegmentedTabState extends State<RadioSegmentedTab> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.25,
      left: MediaQuery.of(context).size.width * 0.05,
      right: MediaQuery.of(context).size.width * 0.05,
      child: CupertinoSlidingSegmentedControl(
        proportionalWidth: false,
        backgroundColor: AppColors.black.withAlpha(120),
        groupValue: _selectedIndex,
        thumbColor: AppColors.gold,
        padding: EdgeInsetsGeometry.zero,
        children: {
          0: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text('Radio', style: AppStyles.radioNotSelectedTabStyle),
          ),
          1: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text('Reciters', style: AppStyles.radioSelectedTabStyle),
          ),
        },
        onValueChanged: (int? value) {
          if (value != null) {
            setState(() => _selectedIndex = value);
            widget.onTabChanged?.call(value);
          }
        },
      ),
    );
  }
}
