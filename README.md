A Flutter package for creating an animated icon button with customizable icon, text, and colors for selected and unselected states


<image src="https://github.com/fatememir/images/assets/52149746/4cfea0ea-dc46-473b-8ec0-fe2f4241dd43" width=300>

## Installation

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  flutter:
    sdk:
  animated_icon_button_flutter: any
```

Import the package like this:

```dart
  import 'package:animated_icon_button_flutter/animated_icon_button_flutter.dart';
```

## Usage

create an AnimatedIconButton widget, and pass the required params:

```dart

AnimatedIconButton(
            text: 'Favorite',
            iconData: Icons.star,
          )
```

## Customization
Customize the AnimatedIconButton widget with these parameters:

```dart
/// This color appears after clicking the button
/// Default is Color(0xFFFFD700).
final Color selectedColor;

/// This color appears After clicking again( the button appears disabled)
/// Default is Color(0xFF708090).
final Color unSelectedColor;

/// The color of text in enable state
/// Default is Color(0xFFFFD700).
final Color textSelectedColor;

/// The color of text in disable state
/// Default is Color(0xFF708090).
final Color textUnselectedColor;

/// The color of icon in enable state
/// Default is Color(0xFFFFD700).
final Color iconSelectedColor;

/// The color of icon in disable state
/// Default is Color(0xFF708090).
final Color iconUnselectedColor;

```