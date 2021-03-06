import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jing/screens/provider_demo_screen.dart';
import 'package:jing/widget/gradient_button.dart';

import 'browser_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter 采坑之旅'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            FlatButton(
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    Browser.routeName,
                    arguments: <String, dynamic>{
//                      Browser.TITLE: S.of(context).appSettingProtocol,
                      Browser.URL: 'https://www.baidu.com',
                    },
                  );
                },
                child: Text('打开链接')),
            SizedBox(
              height: 10,
              width: double.infinity,
            ),
            FlatButton(
                color: Colors.lightBlue,
                onPressed: () {
                  const String url = 'assets/static/test.html';
                  Navigator.of(context).pushNamed(
                    Browser.routeName,
                    arguments: <String, dynamic>{
                      Browser.URL: '',
                      Browser.TITLE: '本地html',
                      Browser.HTML: url,
                    },
                  );
                },
                child: Text('打开本地html')),
            SizedBox(
              height: 10,
              width: double.infinity,
            ),
            FlatButton(
                color: Colors.lightBlue,
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    ProviderDemoScreen.routeName,
                  );
                },
                child: Text('provider demo')),
            SizedBox(
              height: 10,
              width: double.infinity,
            ),
            GradientButton(
              child: Text('渐变色按钮'),
              height: 50,
              width: 200,
              colors: [Colors.lightBlue,Colors.blueGrey],
              onPressed: (){},
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            SizedBox(
              height: 10,
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
