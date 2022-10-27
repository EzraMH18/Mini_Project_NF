import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FormJemputSampah extends StatefulWidget {
  const FormJemputSampah({Key? key}) : super(key: key);

  @override
  State<FormJemputSampah> createState() => _FormJemputSampahState();
}

class _FormJemputSampahState extends State<FormJemputSampah> {
  _FormJemputSampahState() {
    _selectedVal = _jenisSampah[0];
  }

  TextEditingController datetimeinput = TextEditingController();

  String? _selectedVal = '';
  final _jenisSampah = ['Plastik', 'Logam', 'Kertas', 'Karet'];

  @override
  void initState() {
    datetimeinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.greenAccent,
        title: Text('Jemput Sampah'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Nama Lengkap",
                  labelText: "Nama Lengkap",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Alamat",
                  labelText: "Alamat",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              DropdownButtonFormField(
                value: _selectedVal,
                items: _jenisSampah
                    .map((e) => DropdownMenuItem(child: Text(e), value: e))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedVal = val as String;
                  });
                },
                decoration: InputDecoration(labelText: 'Jenis Sampah'),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Berat (Kg)",
                  labelText: "Berat (Kg)",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: datetimeinput,
                decoration: InputDecoration(
                  labelText: "Tanggal Penjemputan",
                ),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (pickedDate != null) {
                    String formatDate =
                        DateFormat('dd-MMM-yyyy').format(pickedDate);
                    setState(() {
                      datetimeinput.text = formatDate;
                    });
                  } else {
                    datetimeinput.text = "";
                  }
                },
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Catatan Tambahan",
                  labelText: "Catatan Tambahan",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text('Sukses'),
                      content: SizedBox(
                        height: 50,
                        child: Text('Data Sukes Terkirim'),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'Ok');
                          },
                          child: Text('Ok'),
                        )
                      ],
                    ),
                  );
                },
                child: Text(
                  'Jemput Sekarang',
                ),
                style: ElevatedButton.styleFrom(primary: Colors.greenAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
