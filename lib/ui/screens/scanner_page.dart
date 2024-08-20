import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key, required this.title});


  final String title;

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  String _scanTxt = 'Не отсканировано';

  Future<void> scanCode() async {
    String scanRes;

    scanRes = await FlutterBarcodeScanner.scanBarcode('#28386a', 'Отменить', true, ScanMode.QR);

    if(!mounted) return;

    setState(() {
      _scanTxt = scanRes;
    });
  }
  

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      
        title: Text(widget.title),
      ),
      body: 
      Container(
        alignment: Alignment.center,
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Scan text: \n $_scanTxt', style: const TextStyle(fontSize: 23),),
            ElevatedButton(onPressed: () => scanCode, child: const Text('Начни сканировать'))
          ],
        ),
      ),
    );
  }
}
