import 'package:animation_app/frontpage_animation/core/viewmodels/home_model.dart';
import 'package:animation_app/frontpage_animation/ui/shared/globals.dart';
import 'package:animation_app/frontpage_animation/ui/widgets/textfield_widget.dart';
import 'package:animation_app/frontpage_animation/ui/widgets/wave_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import '../../../Home.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bool keyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;
    // final model = Provider.of<HomeModel>(context);

    return Scaffold(
      backgroundColor: Global.white,
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height - 200,
            color: Colors.brown[800],
            //color: Colors.black,
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeOutQuad,
            top: keyboardOpen ? -size.height / 3.7 : 0.0,
            child: WaveWidget(
              size: size,
              yOffset: size.height / 3.0,
              color: Global.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Welcome',
                  style: TextStyle(
                    color: Global.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextFieldWidget(
                  hintText: "Full Name",
                  obscureText: false,
                  prefixIconData: Icons.person,
                  //suffixIconData: model.isValid ? Icons.check : null,
                  onChanged: (value) {
                    //model.isValidEmail(value);
                  },
                ),
                SizedBox(
                  height: 12.0,
                ),
                TextFieldWidget(
                  hintText: 'Phone Number',
                  obscureText: false,
                  prefixIconData: Icons.phone_iphone,
                  // suffixIconData: model.isValid ? Icons.check : null,
                  onChanged: (value) {
                    // setState(() {
                    //
                    // });
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  color: Colors.brown[800],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  textColor: Colors.white,
                  child: Text('Continue', style: TextStyle(fontSize: 20)),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 3.0),
                      borderRadius: BorderRadius.circular(18.0)),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
