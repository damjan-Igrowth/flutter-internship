import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_shop/widgets/data/bottom_sheet_item.dart';
import 'package:flutter_internship/sneakers_shop/helpers/shop_icons_icons.dart';

class BottomListSheet extends StatelessWidget {
  final String sheetTitleText;
  final List<BottomSheetItem> itemsList;
  final Function(String) onItemSelected;
  final String selectedItem;

  const BottomListSheet({
    super.key,
    required this.sheetTitleText,
    required this.itemsList,
    required this.onItemSelected,
    required this.selectedItem,
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
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _SheetTitle(sheetTitleText: sheetTitleText),
                _DropIcon(),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: itemsList.length,
              itemBuilder: (BuildContext context, int index) {
                final listItem = itemsList[index];
                return _ListItem(
                  tileText: listItem.text,
                  tileIcon: listItem.icon,
                  isSelected: selectedItem == listItem.text,
                  onTap: () => onItemSelected(listItem.text),
                );
              },
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
  final bool isSelected;

  const _ListTileText(
      {required this.tileText, this.tileIcon, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (tileIcon != null) ...[
          Icon(
            tileIcon,
            size: 20,
            color: isSelected ? Colors.blue : const Color(0xFF8C8C8C),
          ),
          const SizedBox(width: 20),
        ],
        Text(
          tileText,
          style: TextStyle(
            color: isSelected ? Colors.blue : const Color(0xFF8C8C8C),
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

class _ListItem extends StatelessWidget {
  final String tileText;
  final IconData? tileIcon;
  final bool isSelected;
  final VoidCallback onTap;

  const _ListItem({
    required this.tileText,
    this.tileIcon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected ? Colors.lightBlue[50] : Colors.transparent),
      child: ListTile(
        title: _ListTileText(
          tileText: tileText,
          tileIcon: tileIcon,
          isSelected: isSelected,
        ),
        onTap: () {
          onTap();
          Navigator.pop(context);
        },
      ),
    );
  }
}
