import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(StarNet());
}

class StarNet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'StarNet',
      home : Star(),
    );
  }
}

class Star extends StatefulWidget {
  @override
  _StarState createState() => _StarState();
}

List <Container> pages=[
  Container(child : WebView(initialUrl: 'https://starnetig.net', javascriptMode: JavascriptMode.unrestricted,),),
  Container(child : WebView(initialUrl: 'https://starnetig.net/registration.html', javascriptMode: JavascriptMode.unrestricted,),),
  Container(child : WebView(initialUrl: 'https://fast.com', javascriptMode: JavascriptMode.unrestricted,),),
  Container(child : WebView(initialUrl: 'http://medialink24.net', javascriptMode: JavascriptMode.unrestricted,),),
  Container(color: Colors.white,child :  SafeArea(
                child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('About StarNet',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 35,
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: Divider(
                      color: Colors.green,
                    ),
                  ),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://starnetig.net/assets/images/masum.jpg'),

                  ),

                         Text('Naser Hasan Masum',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 25,
                    ),

                  ),

                  Text('CEO , StarNet',style: TextStyle(
                    letterSpacing: 2.5,
                    color: Colors.green,
                    fontSize: 18.0,
                  ),),


                  SizedBox(
                    width: 100,
                    child: Divider(
                      color: Colors.green,
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 25.0 , horizontal: 30.0),

                    color: Colors.green,
                    child:ListTile(
                      leading:   Icon(
                        Icons.public,
                        color:Colors.blueGrey[900],
                      ),
                      title: Text('www.starnetig.net', style: TextStyle(color: Colors.blueGrey[900])),

                    ),
                  ),

                  SizedBox(
                    width: 400,
                    child: Divider(
                      color: Colors.green,
                    ),
                  ),
                  Text('About Developer',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 35,
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    child: Divider(
                      color: Colors.green,
                    ),
                  ),
                  CircleAvatar(
                       radius: 50,
                        backgroundImage: NetworkImage('https://mhutshow.com/assets/images/c1.jpg'),

                ),
                      Text('Mahedi Hasan Utshow',
                     style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 25,
                ),

                ),

                      Text('Flutter Developer',style: TextStyle(
                letterSpacing: 2.5,
                color: Colors.blueGrey,
                fontSize: 18.0,
                ),),
                      SizedBox(
                width: 100,
                     child: Divider(
                color: Colors.blueGrey,
                ),
                ),
                    Card(
                margin: EdgeInsets.symmetric(vertical: 25.0 , horizontal: 30.0),

                color: Colors.blueGrey,
                      child:ListTile(
                           leading:   Icon(
                        Icons.public,
                         color:Colors.blueGrey[900],
                ),
                           title: Text('www.mhutshow.com', style: TextStyle(color: Colors.blueGrey[900])),

                ),
                ),
                Card(
                margin: EdgeInsets.symmetric(vertical: 10 , horizontal: 30.0),
                color: Colors.blueGrey,
                      child: ListTile(

                      leading:  Icon(
                Icons.email,
                color: Colors.blueGrey[900],
                ),
                title: Text('admin@mhutshow.com',style: TextStyle(color: Colors.blueGrey[900])),

                ),
                ),

                ],
                )
                )
                ),


];
int i=0;
Container page() {
  if (i == 0) {
    return pages[0];
  }
  if (i == 1) {
    return pages[1];
  }
  if (i == 2) {
    return pages[2];
  }
  if (i == 3) {
    return pages[3];
  }
  else{
    return pages[4];
  }
}
class _StarState extends State<Star> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StarNet'),
        backgroundColor: Colors.green,
      ),
      body: page(),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.green,
        height: 65,
        animationDuration: Duration(
          milliseconds: 300,
        ),
        items: <Widget>[
          Icon(Icons.home, size: 18),
          Icon(Icons.person_add, size: 18),
          Icon(Icons.toys, size: 18),
          Icon(Icons.play_circle_outline, size: 18),
          Icon(Icons.close, size: 18, ),
        ],
        onTap: (index) {
          setState(() {
            i=index;
            print('$i');
          });
        },
      ),
    );
  }
}





