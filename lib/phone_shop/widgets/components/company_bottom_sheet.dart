import 'package:flutter/material.dart';
import 'package:flutter_internship/sneakers_shop/helpers/shop_icons_icons.dart';

class CompanyBottomSheet extends StatefulWidget {
  final String sheetTitleText;

  final String firstText;
  final String secondText;
  final String thirdText;
  final String fourthText;
  final String fifthText;
  final IconData? firstIcon;
  final IconData? secondIcon;
  final IconData? thirdIcon;
  final IconData? fourthIcon;
  final IconData? fifthIcon;

  const CompanyBottomSheet({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    required this.fourthText,
    required this.fifthText,
    this.firstIcon,
    this.secondIcon,
    this.thirdIcon,
    this.fourthIcon,
    this.fifthIcon,
    required this.sheetTitleText,
  });

  @override
  State<CompanyBottomSheet> createState() => _CompanyBottomSheetState();
}

class _CompanyBottomSheetState extends State<CompanyBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFFFFFFF),
      ),
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _SheetTitle(sheetTitleText: widget.sheetTitleText),
                _DropIcon(),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _ListItem(
                    tileText: widget.firstText, tileIcon: widget.firstIcon),
                _ListItem(
                    tileText: widget.secondText, tileIcon: widget.secondIcon),
                _ListItem(
                    tileText: widget.thirdText, tileIcon: widget.thirdIcon),
                _ListItem(
                    tileText: widget.fourthText, tileIcon: widget.fourthIcon),
                _ListItem(
                    tileText: widget.fifthText, tileIcon: widget.fifthIcon),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SheetTitle extends StatelessWidget {
  final String sheetTitleText;

  const _SheetTitle({required this.sheetTitleText});
  @override
  Widget build(BuildContext context) {
    return Text(
      sheetTitleText,
      style: const TextStyle(
        color: Color(0xFF181E25),
        fontSize: 16,
        fontWeight: FontWeight.w700,
        fontFamily: 'Inter',
        fontStyle: FontStyle.normal,
      ),
    );
  }
}

class _DropIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(ShopIcons.icons, size: 24, color: Color(0xFF181E25)),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
  }
}

class _ListTileText extends StatelessWidget {
  final String tileText;
  final IconData? tileIcon;

  const _ListTileText({required this.tileText, this.tileIcon});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (tileIcon != null) ...[
          Icon(tileIcon, size: 20, color: const Color(0xFF8C8C8C)),
          const SizedBox(width: 20),
        ],
        Text(
          tileText,
          style: const TextStyle(
            color: Color(0xFF8C8C8C),
            fontFamily: 'Inter',
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _ListItem extends StatefulWidget {
  final String tileText;
  final IconData? tileIcon;

  const _ListItem({required this.tileText, this.tileIcon});

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<_ListItem> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _isSelected ? Colors.lightBlue : Colors.white,
      child: ListTile(
        title: _ListTileText(
          tileText: widget.tileText,
          tileIcon: widget.tileIcon,
        ),
        onTap: () {
          setState(() {
            _isSelected = !_isSelected;
          });
          Navigator.pop(context);
        },
      ),
    );
  }
}
