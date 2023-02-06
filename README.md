# macosui_tool_starter

![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)

A starter Flutter tool for macOS that uses [`macos_ui`](https://pub.dev/packages/macos_ui).

<img src="https://github.com/schilken/macosui_tool_starter/tree/main/assets_for_readme/macosui_tool_starter-screenshot.png"/>


## What's Included ✨

Out of the box, this brick creates a Flutter application that:
- ✅ Targets macOS (support for other platforms can be added manually)
- ✅ Builds an UI based on the latest version of `macos_ui` 
- ✅ Prepares a preferences_repository using SharedPreferences 
- ✅ Prepares an AppNotifier providing an minimal AppState using SharedPreferences 
- ✅ Provides a `ToolBarPullDownButton` in the `ToolBar` with two menu items
  * `Choose Folder` which opens a FilePicker
  * `Scan Directory`which calls a method on `AppNotifier`
- ✅ Reads the current version from the pubspec.yaml and provides it in the `AppState`
- ✅ Has these packages pre-installed
  * `macos_ui` 
  * `flutter_hooks`
  * `hooks_riverpod`
  * `shared_preferences`
  * `file_picker`
  * `pubspec_parse`

## Output 📦
```
├── README.md
├── analysis_options.yaml
├── lib
│   ├── main.dart
│   ├── pages
│   │   ├── home_page.dart
│   │   ├── main_view.dart
│   │   └── settings_page.dart
│   └── providers
│       ├── app_notifier.dart
│       ├── preferences_repository.dart
│       ├── providers.dart
│       └── settings_notifier.dart
├── macos
├── pubspec.lock
├── pubspec.yaml
└── test
    └── widget_test.dart
```

## Credits 
If you don't need or want Riverpod, preferences and file_picker, you can also use the brick `macosui_starter`, 
which was the starting point for this brick. 
It has less packages but allows multiple windows and has several options to configure the window style. 