import 'package:flutter/material.dart';
import 'package:flutter_internship/phone_shop/widgets/data/category_list_item.dart';
import 'package:flutter_internship/sneakers_shop/helpers/shop_icons_icons.dart';

class BottomItemsSheet extends StatefulWidget {
  final String sheetTitleText;
  final List<ShopItem> itemsList;
  const BottomItemsSheet({
    super.key,
    required this.sheetTitleText,
    required this.itemsList,
  });

  @override
  State<BottomItemsSheet> createState() => _BottomItemsSheetState();
}

class _BottomItemsSheetState extends State<BottomItemsSheet> {
  String? _selectedItem;

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
            child: ListView.builder(
              itemCount: widget.itemsList.length,
              itemBuilder: (BuildContext context, int index) {
                final listItem = widget.itemsList[index];
                return _ListItem(
                  tileText: listItem.text,
                  tileIcon: listItem.icon,
                  isSelected: _selectedItem == listItem.text,
                  onTap: () => _handleItemTap(listItem.text),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _handleItemTap(String selectedItem) {
    setState(() {
      _selectedItem = selectedItem;
    });
    Navigator.pop(
      context,
      selectedItem,
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
  final bool isSelected;
  final VoidCallback onTap;

  const _ListItem({
    required this.tileText,
    this.tileIcon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<_ListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.isSelected ? Colors.lightBlue : Colors.white,
      child: ListTile(
        title: _ListTileText(
          tileText: widget.tileText,
          tileIcon: widget.tileIcon,
        ),
        onTap: widget.onTap,
      ),
    );
  }
}
