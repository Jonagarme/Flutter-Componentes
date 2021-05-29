import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            Expanded(
              child: _crearImagen(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
        'https://image.api.playstation.com/cdn/UP2026/CUSA05332_00/z0jWsKVxCcuqzLvbk3BFg2r2TFPFRD0s.png',
      ),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }
}