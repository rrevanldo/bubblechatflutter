import 'package:flutter/material.dart';
import 'package:chat/kontak.dart';
import 'package:chat/chat1.dart';

String logoURL =  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS4_QZtmM0q3klzWnFVlVkCk06ro1u5L2PSVNxDMmX&s';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.blueAccent,
      body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Colors.blue),
          child: ListView(
              padding: EdgeInsets.only(bottom: 30),
              children: <Widget>[
                Column(children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 40, 30, 30),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    // padding: EdgeInsets.all(10),
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 45),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150),
                      // border: Border.all(
                      //   width: 4,
                      //   color: Color.fromARGB(255, 19, 123, 192),
                      // ),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        image: DecorationImage(
                            image: AssetImage("images/vann.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Revan Rionaldo",
                      style: TextStyle(
                        fontSize: 30,
                        // fontWeight: FontWeight.w300,
                        color: Colors.white,
                        // color: Color.fromARGB(255, 19, 123, 192),
                        // letterSpacing: .5,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Full Stack Developer",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 20,
                        // fontWeight: FontWeight.w600,
                        // color: Colors.grey,
                        // color: Color.fromARGB(255, 19, 123, 192),
                        letterSpacing: .5,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.fromLTRB(0, 30, 0, 40),
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(left: 15, top: 10),
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Friend",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 0, 0, 0),
                              letterSpacing: .5,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("images/tj.jpg"),
                          ),
                          title: Text("Toji Fushiguro", 
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          subtitle: Text('Halo Revan!!'),
                          trailing: Text('12.53', 
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("images/nm.jpg"),
                          ),
                          title: Text("Nanami Kento" ,
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          subtitle: Text('Hai Revan Apa Kabar?',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                          trailing: Text(
                            'Now',
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 15, top: 10  ),
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            'Groups',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(logoURL),
                            // AssetImage("images/kl.jpg"),
                          ),
                          title: Text("Keluarga Besar JJK", 
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          subtitle: Text('Halo pagi gais!!!'),
                          trailing: Text('12.43', 
                          style: TextStyle(fontSize: 20),
                          ),
                          onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return ChatPage();
                                }
                              ),
                            );
                          }
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("images/gj.jpg"),
                          ),
                          title: Text("Jujutsu Kaisen", 
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          subtitle: Text('bangun gais hari ini sekolah!'),
                          trailing: Text('04.43', 
                          style: TextStyle(fontSize: 20),),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("images/sk.jpg"),
                          ),
                          title: Text("JJK XI-2", 
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          subtitle: Text('Selamat pagi semua!'),
                          trailing: Text('00.43', 
                          style: TextStyle(fontSize: 20),),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("images/jk.jpg"),
                          ),
                          title: Text("Grup Sekolah",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          subtitle: Text('Besok Libur',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                          trailing: Text(
                            '12.34',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("images/kl.jpg"),
                          ),
                          title: Text("Jujutsu Squad",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          subtitle: Text('Besok Libur',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                          trailing: Text(
                            '12.34',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("images/gj.jpg"),
                          ),
                          title: Text("penista gojo",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          subtitle: Text('banyak tugas',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                          trailing: Text(
                            '12.34',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("images/sk.jpg"),
                          ),
                          title: Text("Grup Wibu",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          subtitle: Text('Haloo',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                          trailing: Text(
                            '12.34',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("images/tj.jpg"),
                          ),
                          title: Text("Fans Toji",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                          subtitle: Text('Aku Fushiguro',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                          trailing: Text(
                            '12.34',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),

                      ],
                    ),
                  ),
                ]),
              ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
Navigator.push( context,
    MaterialPageRoute(
      builder: (context) { return KontakPage();
      }
    ),
  );
      },
child: Icon(Icons.chat_rounded),
      ),
    );
  }
}

