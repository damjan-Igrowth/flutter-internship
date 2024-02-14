import 'package:flutter/material.dart';
import 'package:flutter_internship/sneakers_shop/helpers/shop_icons_icons.dart';

class CompanyBottomSheet extends StatelessWidget {
  final String sheetTitleText;

  final String firstText;
  final String secondText;
  final String thirdText;
  final String fourthText;
  final String fifthText;
  final IconData firstIcon;
  final IconData secondIcon;
  final IconData thirdIcon;
  final IconData fourthIcon;
  final IconData fifthIcon;

  const CompanyBottomSheet({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    required this.fourthText,
    required this.fifthText,
    required this.firstIcon,
    required this.secondIcon,
    required this.thirdIcon,
    required this.fourthIcon,
    required this.fifthIcon,
    required this.sheetTitleText,
  });

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
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _SheetTitle(sheetTitleText: sheetTitleText),
                _DropIcon(),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: _ListTileText(
                    tileText: firstText,
                    tileIcon: firstIcon,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: _ListTileText(
                    tileText: secondText,
                    tileIcon: secondIcon,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: _ListTileText(
                    tileText: thirdText,
                    tileIcon: thirdIcon,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: _ListTileText(
                    tileText: fourthText,
                    tileIcon: fourthIcon,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: _ListTileText(
                    tileText: fifthText,
                    tileIcon: fifthIcon,
                  ),
                  onTap: () {},
                ),
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
  final IconData tileIcon;

  const _ListTileText({required this.tileText, required this.tileIcon});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(tileIcon, size: 20, color: const Color(0xFF8C8C8C)),
        const SizedBox(width: 20),
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
