A Flutter package for creating an animated icon button with customizable icon, text, and colors for selected and unselected states


<image src="https://private-user-images.githubusercontent.com/52149746/332402435-4cfea0ea-dc46-473b-8ec0-fe2f4241dd43.gif?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3MTYyOTAzMzksIm5iZiI6MTcxNjI5MDAzOSwicGF0aCI6Ii81MjE0OTc0Ni8zMzI0MDI0MzUtNGNmZWEwZWEtZGM0Ni00NzNiLThlYzAtZmUyZjQyNDFkZDQzLmdpZj9YLUFtei1BbGdvcml0aG09QVdTNC1ITUFDLVNIQTI1NiZYLUFtei1DcmVkZW50aWFsPUFLSUFWQ09EWUxTQTUzUFFLNFpBJTJGMjAyNDA1MjElMkZ1cy1lYXN0LTElMkZzMyUyRmF3czRfcmVxdWVzdCZYLUFtei1EYXRlPTIwMjQwNTIxVDExMTM1OVomWC1BbXotRXhwaXJlcz0zMDAmWC1BbXotU2lnbmF0dXJlPTczYTY1MTMwNTc5Zjg0MTc1MzMwYjY0YjNhODFhNzk1Y2VlNDI0Njk0N2RmYTA2MjFjODZiNzMyNDdkYjZlMDMmWC1BbXotU2lnbmVkSGVhZGVycz1ob3N0JmFjdG9yX2lkPTAma2V5X2lkPTAmcmVwb19pZD0wIn0.FbGKXrDmOoIvAXnqgPA4yByc46qy852M6DkyBYoUxMU" width=300>

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

create a AnimatedIconButton widget, and pass the required params:

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