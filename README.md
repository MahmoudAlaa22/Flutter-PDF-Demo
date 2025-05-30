# Flutter PDF Generation Demo

A simple Flutter application demonstrating how to generate and share PDF documents using the [`pdf`](https://pub.dev/packages/pdf) and [`printing`](https://pub.dev/packages/printing) packages.

## 🚀 Features

- **Author Info Page**: Includes a cover page with author details (name, role, GitHub, LinkedIn).
- **Content Page**: A demonstration page with a simple "Hello, PDF from Flutter!" message.
- Generate and **share** PDF directly from the app.

## 📦 Project Structure

```
flutter_pdf_demo/
├── pubspec.yaml       # Package dependencies & metadata
└── lib
    └── main.dart      # Main application entry point
```

## 🔧 Getting Started

1. **Clone the repository**
   ```bash
   git clone https://github.com/MahmoudAlaa22/flutter_pdf_demo.git
   cd flutter_pdf_demo
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## 📝 How It Works

1. **Dependencies**
   - `pdf` to create PDF documents.
   - `printing` to render, preview, or share the generated PDF.

2. **Document Structure**
   - **Page 1**: Displays author information (Mahmoud Alaa, Software Engineer, GitHub & LinkedIn links).
   - **Page 2**: Displays a centered "Hello, PDF from Flutter!" message.

3. **Generate & Share**
   - `pdf.save()` returns the PDF as bytes.
   - `Printing.sharePdf(bytes: bytes, filename: 'demo.pdf')` opens the native share sheet.

## 🤝 Contributing

Feel free to submit issues or pull requests to add new features:
- **Add images, tables, or custom layouts**
- **Customize fonts and styling**
- **Handle multiple pages with headers/footers**

1. Fork the repo
2. Create your feature branch (`git checkout -b feature/YourFeature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/YourFeature`)
5. Open a Pull Request

---

Created by **Mahmoud Alaa** ([GitHub](https://github.com/MahmoudAlaa22) • [LinkedIn](https://www.linkedin.com/in/mahmoudalaa2210))
