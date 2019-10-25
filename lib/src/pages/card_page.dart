import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2()
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('lista brus'),
            subtitle: Text(
                'Repudiandae nihil laboriosam. Molestiae vel ut at et recusandae in. Eius in voluptas qui voluptatibus vero labore. Dolorem voluptatum deleniti qui. Qui quo iure sunt officiis fugiat rerum. Dolores quia rerum laboriosam est adipisci ut rerum error.'),
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://images-na.ssl-images-amazon.com/images/I/91QXvPzMBnL._UL1500_.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage(
          //       'https://images-na.ssl-images-amazon.com/images/I/91QXvPzMBnL._UL1500_.jpg'),
          // ),
          Container(
            child: Text('Aea brus'),
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
    );
  }
}
