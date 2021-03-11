import 'package:flutter/material.dart';
import 'package:newsapp/src/article.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Articletest> _articles =articles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Flutter news"),

      ),
      backgroundColor: Colors.white,
      body: RefreshIndicator(
        onRefresh: () async{
          setState(() {
            _articles.removeAt(0);
          });
          await Future.delayed(const Duration(seconds: 1));
           return ;

        },
        child: new ListView(
          children:_articles.map(_buildItem).toList() ,
        ),
      ),
    );
  }

  Widget _buildItem( Articletest article){

    return Padding(
      key: Key(article.text),
      padding: const EdgeInsets.all(23),
      child: new ExpansionTile(
        title: new Text(article.text, style: TextStyle(fontSize: 25),),

        children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Text("${article.commentsCount} comments"),
             IconButton(
               icon: Icon(Icons.launch),
               onPressed: () async {
          final demoUrl= "http://${article.url}";
          if( await canLaunch(demoUrl)){
                launch(demoUrl);
          }
               }
             )
           ],
         )
        ],

//        onTap: () async{
//          final demoUrl= "http://${article.domain}";
//          if( await canLaunch(demoUrl)){
//                launch(demoUrl);
//          }
//
//        }
      ),
    );
  }
}
