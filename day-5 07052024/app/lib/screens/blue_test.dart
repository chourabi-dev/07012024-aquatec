import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  BluetoothDevice? device;

  List<BluetoothService> _sevices = [];


  

  sendMSG(String msg) async {
    for (BluetoothService service in _sevices) {
      for (BluetoothCharacteristic characteristic in service.characteristics) {
        if (characteristic.properties.write) {
          await characteristic.write(utf8.encode(msg));
        }
      }
    }
  }

  readMSG() {
    for (BluetoothService service in _sevices) {
      for (BluetoothCharacteristic characteristic in service.characteristics) {
        if (characteristic.properties.read) {
          characteristic.value.listen((value) {
            print(utf8.decode(value));
          });
        }
      }
    }
  }

  scan() {
    FlutterBlue flutterBlue = FlutterBlue.instance;
    // Start scanning
    flutterBlue.startScan(timeout: Duration(seconds: 4));

    print("start scan");
// Listen to scan results
    var subscription = flutterBlue.scanResults.listen((results) {
      // do something with scan results
      for (ScanResult r in results) {
        print('${r.device.name}-found! rssi: ${r.rssi} \n');

        if (r.device.name == 'Flutter Training BLE') {
          setState(() {
            device = r.device;
          });

          connectToDevice();
        }
      }
    });

// Stop scanning
    flutterBlue.stopScan();
  }

  void _discoverServices() async {
    if (device == null) return;

    List<BluetoothService> services = await device!.discoverServices();

    setState(() {
      _sevices = services;
    });
  }

  connectToDevice() async {
    if (device != null) {
      device!.connect().then((res) {
        print("connected");

        readMSG();

        _discoverServices();
      }).catchError((err) {
        print("Error connection");
      });
    } else {
      print("no device selected");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bluetooth"),
        actions: [
          IconButton(
              onPressed: () {
                sendMSG("hello world");
              },
              icon: Icon(Icons.send))
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("scan"),
          onPressed: () {
            scan();
          },
        ),
      ),
    );
  }
}
