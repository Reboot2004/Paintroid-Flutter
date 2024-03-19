import 'package:flutter/material.dart';
import 'package:tools/tools.dart';
import 'package:workspace_screen/src/components/bottom_bar/tools/tool_button.dart';
import 'package:workspace_screen/workspace_screen.dart';

class ToolsBottomSheet extends StatelessWidget {
  const ToolsBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const tools = ToolData.allToolsData;
    final screenWidth = MediaQuery.of(context).size.width;
    final childAspectRatio = screenWidth < 600 ? 1.3 : 1.5;
    return (
        GridView.count(
          crossAxisCount: 4,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
          childAspectRatio: childAspectRatio,
          children: tools.map((toolData) {
            return ToolButton(
              toolData: toolData,
            );
          }).toList(),
        ));
  }
}
