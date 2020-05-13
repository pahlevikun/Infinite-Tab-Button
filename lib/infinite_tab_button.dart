library infinite_tab_button;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

export 'package:infinite_tab_button/infinite_tab_button.dart';

class InfiniteTabButton extends StatefulWidget {
  const InfiniteTabButton(this.items,
      {Key key,
        this.textEnableColor = Colors.white,
        this.textDisableColor = Colors.black45,
        this.buttonDisableColor = Colors.white,
        this.buttonEnableColor = Colors.black45,
        this.textStyle = const TextStyle(),
        this.cornerRadius = 10,
        this.height = 40,
        this.shrinkWrap = false,
        this.onTap = null})
      : super(key: key);

  final List<TabButtonModel> items;
  final Color textEnableColor;
  final Color textDisableColor;
  final Color buttonDisableColor;
  final Color buttonEnableColor;
  final TextStyle textStyle;
  final double cornerRadius;
  final bool shrinkWrap;
  final double height;
  final Function(int index, TabButtonModel item) onTap;

  @override
  State<StatefulWidget> createState() => _InfiniteTabButtonState();
}

class _InfiniteTabButtonState extends State<InfiniteTabButton> {
  int _currentTabButtonIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: ListView.builder(
          shrinkWrap: widget.shrinkWrap,
          scrollDirection: Axis.horizontal,
          itemCount: widget.items.length,
          itemBuilder: (BuildContext context, int index) =>
              _buildButton(index, widget.items[index])),
    );
  }

  Widget _buildButton(int index, TabButtonModel item) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: FlatButton(
          child: Text(
            item.title,
            style: widget.textStyle.copyWith(
                color: index == _currentTabButtonIndex
                    ? widget.textEnableColor
                    : widget.textDisableColor),
          ),
          padding: const EdgeInsets.all(4),
          color: index == _currentTabButtonIndex
              ? widget.buttonEnableColor
              : widget.buttonDisableColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.cornerRadius)),
          onPressed: () {
            setState(() => _currentTabButtonIndex = index);
            if (index != _currentTabButtonIndex) {
              widget.onTap(index, item);
            }
          }),
    );
  }
}

class TabButtonModel {
  String title;

  TabButtonModel(this.title);
}
