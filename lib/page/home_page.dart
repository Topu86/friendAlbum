import 'package:flutter/material.dart';
import 'package:friendbook/data/data_list.dart';
import 'package:friendbook/model/friend_model.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Friends> friendlist = friend();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text('friendsAlbum',
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 28,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
            ),
            floating: true,
            actions: [
              Container(
                margin: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    shape: BoxShape.circle
                ),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.search,
                    size: 30,
                    color: Colors.deepOrange,),

                ),
              )
            ],
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                 child: Column(
                   children: [
                     Container(
                       color: Colors.grey,
                       child: ListTile(
                         leading: CircleAvatar(
                           radius: 50,
                           child: ClipRRect(
                             child: Image.asset('${friendlist[index].pimage}',
                               fit: BoxFit.cover,),
                           ),
                            ),
                         title: Text('${friendlist[index].name}',
                           textScaleFactor: 1.5,),
                         trailing: Column(
                           children: [
                             IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
                           ],
                         ),
                       ),
                     ),
                     SizedBox(height: 10,),
                     Container(
                         height: 200,
                         width: 250,
                         child: Image.asset('${friendlist[index].image}',fit:BoxFit.fill)),
                     ListTile(
                       title: Text('${friendlist[index].description}',
                         maxLines: 3,textAlign: TextAlign.justify,
                       style: TextStyle(fontSize: 18,color: Colors.black),),
                     ),
                     Divider(),
                     Row(
                       children: [
                         InkWell(
                           onTap: (){},
                           child: Container(
                             height: 30,
                             width: 220,
                             color: Colors.grey[600],
                             child: Text('Like',
                               style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                           ),
                         ),
                         SizedBox(width: 8,),
                         InkWell(
                           onTap: (){},
                           child: Container(
                             height: 30,
                             color: Colors.grey[600],
                             width: 220,
                             child: Text("Comment",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),),
                         )
                       ],
                     )

                    ]
                 ));
              },
              childCount: friendlist.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 2.0,
              mainAxisExtent: 420
            ),
          ),
        ],
      ),
    );

  }
}
