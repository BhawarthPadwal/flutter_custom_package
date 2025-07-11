# bhawarth_custom_package

A custom Flutter package by **Bhawarth Padwal** providing reusable, theme-aware UI widgets (buttons, text fields, checklists) to speed up your app development.

---

## ✨ Features

- Customizable elevated button with styling and tap callback
- Input text field with hint, label, icons, and keyboard type
- Dynamic checklist with checkboxes and change handlers
- Fully theme-aware (adapts to `ThemeData`)

---

## 📦 Installation

Add this to your `pubspec.yaml` under `dependencies:` (update the path as needed):

```yaml
dependencies:
  bhawarth_custom_package:
    path: ../bhawarth_custom_package
```

Then run:

```bash
flutter pub get
```

---

## 🚀 Usage

### ✅ Custom Button

```dart
BhawarthCustomPackage.showCustomButton1(
  context: context,
  buttonText: 'Click Me',
  bgColor: Colors.blue,
  cornerRadius: 12,
  buttonHeight: 50,
  buttonWidth: 200,
  onTap: () => print('Tapped!'),
);
```

### ✅ Custom Text Field

```dart
final controller = TextEditingController();

BhawarthCustomPackage.showCustomTextField1(
  context: context,
  controller: controller,
  hintText: 'Enter your name',
  labelText: 'Name',
  prefixIcon: Icons.person,
);
```

### ✅ Custom Checklist

```dart
final options = ['Option A', 'Option B', 'Option C'];
final selectedValues = [true, false, false];

BhawarthCustomPackage.showCustomChecklist(
  context: context,
  options: options,
  selectedValues: selectedValues,
  onChanged: (index, value) {
    setState(() {
      selectedValues[index] = value;
    });
  },
);
```

---

## 🧪 Testing

Basic widget tests are included under the `test/` directory.

To run all tests:

```bash
flutter test
```

---

## 📄 License

MIT License  
© 2025 Bhawarth Padwal

---

## 🙋‍♂️ Author

Bhawarth Padwal  
📧 bhawarth@example.com <!-- Replace with your real email -->  
🔗 [LinkedIn](#) <!-- Optional: add your LinkedIn URL -->

---

## 🤝 Contributing

Pull requests, feedback, and improvements are welcome!

---

## 🔮 Coming Soon

- Custom toggle switch
- Custom radio group
- Loading shimmer widgets
- Layout helpers

---

Let me know if you also want a:
- `CHANGELOG.md`
- `LICENSE`
- Published version for `pub.dev`

I'll generate them for you in the correct structure.