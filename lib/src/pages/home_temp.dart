import 'package:flutter/material.dart';

class HomePageTem extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco', 'Seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('aea'),
      ),
      // body: ListView(children: _createItems()),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _createItems() {
    List<Widget> lista = new List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(title: Text(opt));
      lista..add(tempWidget)..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((String item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item + '!'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
