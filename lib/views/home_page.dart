import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int itemPosition = 0;
PageController pagecontroller = PageController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Rowena'),
              accountEmail: Text('Rowena@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.dooca.store/6154/products/2-66_450x600.jpg?v=1676485957&webp=0'),
              ),
            ),
            ListTile(
              title: Text('Rowena'),
              subtitle: Text('4875691504'),
              trailing: Icon(Icons.delete),
              leading: CircleAvatar(),
              onTap: () {
                print('Arquivo adicionado!');
              },
              onLongPress: () {
                print('Arquivo deletado!');
              },
            ),
            Divider(),
            ListTile(
              title: Text('Rowena'),
              subtitle: Text('4875691504'),
              trailing: Icon(Icons.delete),
              leading: CircleAvatar(),
              onTap: () {
                print('Arquivo adicionado!');
              },
              onLongPress: () {
                print('Arquivo deletado!');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Ifood'),
        centerTitle: true,
      ),

        body: PageView(
          controller: pagecontroller,
          children: [
            Container(color: Colors.red,),
            Container(color: Colors.green,),
            Container(color: Colors.blue,)
          ],
        ),
      // body: Container(
      //   width: MediaQuery.of(context).size.width,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Container(
      //         decoration: BoxDecoration(
      //             color: Colors.red,
      //             // shape: BoxShape.circle,
      //             borderRadius: BorderRadius.circular(12)),
      //         width: MediaQuery.of(context).size.width,
      //         height: 100,
      //         margin: EdgeInsets.all(30),
      //         child: Center(
      //             child: Text(
      //           'TE',
      //           style: TextStyle(
      //               fontSize: 15,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.white),
      //         )),
      //       ),
      //       Container(
      //         decoration: BoxDecoration(
      //             color: Colors.red,
      //             //shape: BoxShape.circle,
      //             borderRadius: BorderRadius.circular(12)),
      //         width: MediaQuery.of(context).size.width,
      //         height: 100,
      //         margin: EdgeInsets.all(30),
      //         child: Center(
      //             child: Text(
      //           'FODE',
      //           style: TextStyle(
      //               fontSize: 15,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.white),
      //         )),
      //       ),
      //     ],
      //   ),
      // ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.message),
        ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            itemPosition = index;
          });
          pagecontroller.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
        },
        currentIndex: itemPosition,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings')
        ],
      ),

      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // bottomNavigationBar: BottomAppBar(
      //   height: 60,
      //   color: Colors.red,
      //   shape: CircularNotchedRectangle(),
      //   notchMargin: 2,
      // ),
    );
  }
}
