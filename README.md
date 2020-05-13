# Infinite Tab Button

Package for making beautiful infinite tab button.

# Getting Started

This package acting like infinite MaterialTab, but this is only button.
![ss](https://raw.githubusercontent.com/pahlevikun/Infinite-Tab-Button/master/screenshot/ss_01.png)


# How To Use
The `InfiniteTabButton` can be used directly.
```Dart
final List<TabButtonModel> _listOfButton = [
    TabButtonModel("Button 1"),
    TabButtonModel("Button 2"),
    TabButtonModel("Button 3"),
    TabButtonModel("Button 4"),
    TabButtonModel("Button 5"),
    TabButtonModel("Button 6"),
    TabButtonModel("Button 7"),
    TabButtonModel("Button 8"),
    TabButtonModel("Button 9")
  ];
  
Widget buildInfiniteTabButton() => InfiniteTabButton(_listOfButton);
```

