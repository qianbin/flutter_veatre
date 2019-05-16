import 'package:flutter/material.dart';
import 'package:vetheat/common/event_bus.dart';

class StarScreen extends StatefulWidget {
  @override
  _StarScreenState createState() => _StarScreenState();
}

class _StarScreenState extends State<StarScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Stars'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(4.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(4, (index) {
            return Container(
              margin: EdgeInsets.all(15.0),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      bus.emit("goUrl",
                          "https://laalaguer.github.io/vechain-token-transfer/");
                    },
                    child: Container(
                      width: 55.0,
                      height: 55.0,
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Image.network(
                          'https://apps.vechain.org/img/com.laalaguer.token-transfer.3be1b8d3.png'),
                    ),
                  ),
                  Text("Tokens"),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}