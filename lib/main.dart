import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter PDF Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Future<void> _generateAndSharePdf() async {
    final pdf = pw.Document();

    // Page 1: Author Info
    pdf.addPage(
      pw.Page(
        build:
            (context) => pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  'Mahmoud Alaa',
                  style: pw.TextStyle(
                    fontSize: 24,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(height: 4),
                pw.Text('Software Engineer', style: pw.TextStyle(fontSize: 16)),
                pw.SizedBox(height: 8),
                pw.Text(
                  'GitHub: https://github.com/MahmoudAlaa22',
                  style: pw.TextStyle(
                    fontSize: 12,
                    color: PdfColor.fromHex('#0645AD'),
                  ),
                ),
                pw.SizedBox(height: 4),
                pw.Text(
                  'LinkedIn: https://www.linkedin.com/in/mahmoudalaa2210',
                  style: pw.TextStyle(
                    fontSize: 12,
                    color: PdfColor.fromHex('#0A66C2'),
                  ),
                ),
              ],
            ),
      ),
    );

    // Page 2: Content
    pdf.addPage(
      pw.Page(
        build:
            (context) => pw.Center(
              child: pw.Text(
                'Hello, PDF from Flutter!',
                style: pw.TextStyle(fontSize: 24),
              ),
            ),
      ),
    );

    // Save the PDF file
    final bytes = await pdf.save();
    // Share the PDF
    await Printing.sharePdf(bytes: bytes, filename: 'demo.pdf');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter PDF Demo')),
      body: Center(
        child: ElevatedButton(
          onPressed: _generateAndSharePdf,
          child: const Text('Generate & Share PDF'),
        ),
      ),
    );
  }
}
