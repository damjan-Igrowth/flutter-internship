import 'package:flutter/material.dart';

class CompanyOptionsBottomSheet extends StatelessWidget {
  const CompanyOptionsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        children: <Widget>[
          _buildBottomSheetItem(context, "Option 1"),
          _buildBottomSheetItem(context, "Option 2"),
          _buildBottomSheetItem(context, "Option 3"),
          _buildBottomSheetItem(context, "Option 4"),
          _buildBottomSheetItem(context, "Option 5"),
        ],
      ),
    );
  }

  Widget _buildBottomSheetItem(BuildContext context, String value) {
    return ListTile(
      title: Text(value),
      onTap: () {
        // Update the text input field with the selected value
        // You can use a state management solution like Provider or setState
        Navigator.of(context).pop();
      },
    );
  }
}
