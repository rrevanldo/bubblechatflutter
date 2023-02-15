import 'package:custom_clippers/';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chat/kontak.dart';
import 'package:chat/main.dart';
import 'package:chat/ChatBottomBar.dart';

String satu = 'https://i0.wp.com/bloganchoi.com/wp-content/uploads/2022/12/gemini-norawit-4.jpg';
String dua = 'https://assets.promediateknologi.com/crop/0x0:0x0/0x0/webp/photo/2023/01/10/2039660119.jpg';
String tiga = 'https://thumbs.vdvc.id/olret/images/original/2022/12/21/63a2a780be698-pond-naravit-lertratkosum_olret.jpg';
String empat = 'https://cdn.idntimes.com/content-images/community/2021/11/65114178-141059800297242-3247215895559899210-n-25b277b5899ff4bfcd882abc3691af9e-7bda52328f25f183e5f755d508c58fe3.jpg';
String logoURL =  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR656Lth76i9G0yBENuNh-8xzobhCNwymY_MH59WZfJUchxUZsjO1YOjaCX_EC_0Szbog&usqp=CAU';

class ChatSample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return ListView (
      children: [ 
        Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(satu),
              child: Padding(padding: EdgeInsets.only(right: 5)),
            ),
            Padding(
              padding:EdgeInsets.only(right: 100, top: 10),
              child: ClipPath(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 25,right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Ohm Pawat', style: TextStyle(color: Colors.lightBlue[200]),),
                    Text('Halo pagi gais!!!', ),
                    Text('06.34', style: TextStyle(color: Colors.black54),)
                  ],
                ), 
                  ),
                ),
                ),
              ),
          ],
        ),
          Row(mainAxisAlignment: MainAxisAlignment.end,
            children: [
             
              Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 20, left: 80, bottom: 15),
              child: ClipPath(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, top: 10, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Halo Pagi jugaaa!'),
                    Text('08.20', style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
                  ),
                ),
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage("images/vann.jpg"),
              )
            ],
          ),
          Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(dua),
              child: Padding(padding: EdgeInsets.only(right: 5)),
            ),
            Padding(
              padding:EdgeInsets.only(top: 10),
              child: ClipPath(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 25,right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Gemini Norawit', style: TextStyle(color: Colors.lightBlue[200]),),
                    Text('Hallo!! pagi juga buat semuanya'),
                    Text('09.38', style: TextStyle(color: Colors.black54),)
                  ],
                ), 
                  ),
                ),
                ),
              ),
          ],
        ),   
          Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(empat),
              child: Padding(padding: EdgeInsets.only(right: 5)),
            ),
            Padding(
              padding:EdgeInsets.only(top: 10),
              child: ClipPath(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 25,right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nanon Koparat', style: TextStyle(color: Colors.lightBlue[200]),),
                    Text('Hallo, sudah mengerjakan tugas belum'),
                    Text('11.11', style: TextStyle(color: Colors.black54),)
                  ],
                ), 
                  ),
                ),
                ),
              ),
          ],
        ),
          
          Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(tiga),
              child: Padding(padding: EdgeInsets.only(right: 5)),
            ),
            Padding(
              padding:EdgeInsets.only(right: 100, top: 10),
              child: ClipPath(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 25,right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pond Naravit', style: TextStyle(color: Colors.lightBlue[200]),),
                    Text('Aku belum mengerjakan', ),
                    Text('12.12', style: TextStyle(color: Colors.black54),)
                  ],
                ), 
                  ),
                ),
                ),
              ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 20, left: 80, bottom: 15),
              child: ClipPath(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Container(
                    padding: EdgeInsets.only(left: 10,top: 10, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Kalau aku sih sudah ya!!'),
                    Text('12.34', style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
                  ),
                ),
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage("images/vann.jpg"),
              )
          ],
        ),
          Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(satu),
              child: Padding(padding: EdgeInsets.only(right: 5)),
            ),
            Padding(
              padding:EdgeInsets.only(right: 100, top: 10),
              child: ClipPath(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 25,right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Win Metawin', style: TextStyle(color: Colors.lightBlue[200]),),
                    Text('Halo Gimana Kabar Kaliannn?', ),
                    Text('00.00', style: TextStyle(color: Colors.black54),)
                  ],
                ), 
                  ),
                ),
                ),
              ),
          ],
        ),
          Row(
            children: [
              Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(top: 20, left: 80, bottom: 15),
              child: ClipPath(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Container(
                    padding: EdgeInsets.only(left: 10, top: 10, right: 20, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Halo Alhamdulilah baikk! kalian gimana?'),
                    Text('01.23', style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
                  ),
                ),
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage("images/vann.jpg"),
              )
            ],
          ),
          Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(dua),
              child: Padding(padding: EdgeInsets.only(right: 5)),
            ),
            Padding(
              padding:EdgeInsets.only(top: 10),
              child: ClipPath(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 25,right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Tay Tawan', style: TextStyle(color: Colors.lightBlue[200]),),
                    Text('Hallo Hallo, btw guys kapan kita main nih?', overflow: TextOverflow.clip,
  maxLines: 5,),
                    Text('07.54', style: TextStyle(color: Colors.black54),)
                  ],
                ), 
                  ),
                ),
                ),
              ),
          ],
        ),   
          Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(empat),
              child: Padding(padding: EdgeInsets.only(right: 5)),
            ),
            Padding(
              padding:EdgeInsets.only(top: 10),
              child: ClipPath(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 25,right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Fourth Nattawat', style: TextStyle(color: Colors.lightBlue[200]),),
                    Text('Hallo, ayok kita main sudah lama tidak main', 
                    overflow: TextOverflow.clip, maxLines: 5,),
                    Text('08.21', style: TextStyle(color: Colors.black54),)
                  ],
                ), 
                  ),
                ),
                ),
              ),
          ],
        ),
          
          Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(tiga),
              child: Padding(padding: EdgeInsets.only(right: 5)),
            ),
            Padding(
              padding:EdgeInsets.only(right: 100, top: 10),
              child: ClipPath(
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.receive),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, bottom: 10, left: 25,right: 10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Satang Winny', style: TextStyle(color: Colors.lightBlue[200]),),
                    Text('aku otw sekarang juga!', ),
                    Text('09.09', style: TextStyle(color: Colors.black54),)
                  ],
                ), 
                  ),
                ),
                ),
              ),
          ],
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(top: 20, left: 80, bottom: 15),
          child: ClipPath(
            child: ClipPath(
              clipper: UpperNipMessageClipperTwo(MessageType.send),
              child: Container(
                padding: EdgeInsets.only(left: 10,top: 10, right: 20, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Gas sekarang Otw yaaa'),
                Text('09.20', style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
              ),
            ),
            ),
          ),
      ],
    );
  }
}