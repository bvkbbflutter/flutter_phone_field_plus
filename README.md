## Preview

| Country Picker                                                                                                                             | Success Validation                                                                                                                  | Failed Validation                                                                                                                  |
| ------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------- |
| <img src="https://raw.githubusercontent.com/bvkbbflutter/flutter_phone_field_plus/main/assets/screenshots/country_picker.png" width="250"> | <img src="https://raw.githubusercontent.com/bvkbbflutter/flutter_phone_field_plus/main/assets/screenshots/success.png" width="250"> | <img src="https://raw.githubusercontent.com/bvkbbflutter/flutter_phone_field_plus/main/assets/screenshots/failed.png" width="250"> |

# flutter_phone_field_plus

A highly customizable international phone number input field for Flutter applications.

`flutter_phone_field_plus` provides an elegant phone number input widget with:

* 🌍 Country picker
* 📞 International dialing codes
* ✅ Phone number validation
* 🎨 Customizable UI
* 🚀 Easy integration
* 📱 Production-ready experience

---

## Features

* International phone number input
* Country code selector
* Automatic dial code handling
* Built-in validation support
* Custom input decoration
* Country change callback
* Phone number change callback
* Works on Android, iOS, Web, Windows, macOS, and Linux

---

## Installation

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  flutter_phone_field_plus: latest
```

Install dependencies:

```bash
flutter pub get
```

Import:

```dart
import 'package:flutter_phone_field_plus/flutter_phone_field_plus.dart';
```

---

## Basic Usage

```dart
FlutterPhoneFieldPlus(
  onChanged: (phone) {
    print(phone.completeNumber);
  },
)
```

---

## Complete Example

```dart
import 'package:flutter/material.dart';
import 'package:flutter_phone_field_plus/flutter_phone_field_plus.dart';

class PhoneFieldScreen extends StatelessWidget {
  const PhoneFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Field Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FlutterPhoneFieldPlus(
          decoration: const InputDecoration(
            labelText: 'Phone Number',
            border: OutlineInputBorder(),
          ),
          onChanged: (phone) {
            debugPrint(phone.completeNumber);
          },
        ),
      ),
    );
  }
}
```

---

## Validation

```dart
FlutterPhoneFieldPlus(
  validator: (phone) {
    if (phone == null || phone.number.isEmpty) {
      return 'Please enter a phone number';
    }

    return null;
  },
)
```

---

## Country Change Callback

```dart
FlutterPhoneFieldPlus(
  onCountryChanged: (country) {
    debugPrint(country.name);
  },
)
```

---

## Phone Number Change Callback

```dart
FlutterPhoneFieldPlus(
  onChanged: (phone) {
    debugPrint(phone.completeNumber);
  },
)
```

---

## Custom Decoration

```dart
FlutterPhoneFieldPlus(
  decoration: InputDecoration(
    labelText: 'Mobile Number',
    hintText: 'Enter phone number',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
)
```

---

## Example Output

```text
Country: India
Dial Code: +91
Number: 9876543210
Complete Number: +919876543210
```

---

## Supported Platforms

| Platform | Supported |
| -------- | --------- |
| Android  | ✅         |
| iOS      | ✅         |
| Web      | ✅         |
| Windows  | ✅         |
| macOS    | ✅         |
| Linux    | ✅         |

---

## Why flutter_phone_field_plus?

Many Flutter projects require international phone number input. Setting up country pickers, dial codes, validation, and formatting repeatedly can become time-consuming.

`flutter_phone_field_plus` simplifies this process by providing a clean, customizable, and production-ready solution.

---

## Contributing

Contributions, issues, and feature requests are welcome.

If you have suggestions or improvements, feel free to open an issue or submit a pull request.

---

## License

MIT License

---

## Author

Developed with ❤️ using Flutter.

GitHub:
https://github.com/bvkbbflutter/flutter_phone_field_plus

Pub.dev:
https://pub.dev/packages/flutter_phone_field_plus
